
/*
 * Filebrowser.c
 * -------------
 * Implementation des XGraphic-Paketes, einer Schnittstelle von
 * Modula-2 nach XView.
 * ---------------------------------------------------------------------------
 * Autor   : Alexander Schoelling
 * Datum   : 3.1.94
 * ---------------------------------------------------------------------------
 */




/*
 * Teil 0: Einbinden der Header-Files, Typdeklarationen, globale Variablen,
 *         lokale Funktionen
 */



/*
 * a) Einbinden der Header-Files,
 *    Makros definieren
 */
#include <X11/Xlib.h>

#include <xview/xview.h>
#include <xview/frame.h>
#include <xview/canvas.h>
#include <xview/xv_xrect.h>
#include <xview/panel.h>
#include <xview/openmenu.h>
#include <xview/notice.h>
#include <xview/scrollbar.h>
#include <xview/cms.h>
#include <xview/file_chsr.h>
#include <xview/svrimage.h>
#include <xview/icon.h>

#include <string.h>
#include <stdlib.h>
#include <math.h>
#include <stdio.h>


#include "Intern.h"

#ifndef SOLARIS

#include <sys/param.h>
#include <sys/types.h>
#include <sys/dir.h>
#include <sys/stat.h>

#else

#include <dirent.h>
#include <sys/param.h>
#include <sys/types.h>
#include <sys/fs/ufs_fsdir.h>

typedef struct DirEntryList {
	struct dirent	*direntptr;
	struct DirEntryList	*nextentry;
} *DirEntryListPtr;

#endif

int		HasFile;		/* Flag fuer GetFileName()	*/

static char     path[MAXPATHLEN],       /* akt. Pfad in Filesel. box    */
                mask[MASKLEN],          /* akt. Maske in der FS box     */
                file[MAXPATHLEN]	= "";
				       /* akt. Dateiname in FS box     */

Frame		FileFrame;		/* Rahmen der FileSelektor box  */

Panel		FilePanel,		/* Komplette FileSelector box   */
		FilePanelPath,		/* Path Feld in FileSelector    */
		FilePanelMask,		/* Pattern Feld in FileSel.     */
		FilePanelFile,		/* File Feld in FileSel.        */
		FilePanelList;		/* Liste der Dateinamen in FS.  */

/*
 * Die Prototypen der Funktionen.
 */



static int    star                (char *,
                                   char *);

int           wild_match          (char *,
                                   char *);

static int    isdirectory         (char *a);

static int    compar              (struct dirent **,
                                   struct dirent **);

static int    check               (struct dirent *);

void          InitFileList        (char *,
                                   char *);

void          DeleteFileList      (void);





int           ListSelect          (Panel_item,
                                   char *,
                                   Xv_opaque,
                                   Panel_list_op,
                                   Event *,
                                   int);

Panel_setting NewPath             (Panel_item,
                                   Event *);

Panel_setting NewMask             (Panel_item,
                                   Event *);

void          FileOk              (Panel_item,
                                   Event *);

Panel_setting NewFile             (Panel_item,
                                   Event *);

void          FileCancel          (Panel_item,
                                   Event *);


/*
 * hier kommen Routinen, die pattern matching in Dateinamen
 * durchfuehren, wie man es von der Shell kennt.
 */

int
wild_match (char *string, 
            char *pattern)
{
        int prev, matched, reverse;
        
        for (; *pattern; string++, pattern++)
                switch (*pattern)
                {
                case '\\':
                        pattern++;
                default:
                        if (*string != *pattern)
                                return 0;
                        continue;
                case '?':
                        if (*string == '\0')
                                return 0;
                        continue;
                case '*':
                        return *++pattern ?
                                star (string, pattern) :
                                1;
                case '[':
                        reverse = pattern[1] == INVERT;
                        if (reverse)
                                pattern++;
                        for (prev=256, matched = 0;
                             *++pattern && *pattern != ']';
                             prev = *pattern)
                                if (*pattern == '-'
                                    ? *string <= *++pattern &&
                                      *string >= prev
                                    : *string == *pattern)
                                        matched = 1;
                        if (matched == reverse)
                                return 0;
                        continue;
                }
        return *string == '\0';
}


static int
star (char *string,
      char *pattern)
{
        while (wild_match (string, pattern) == 0)
                if (*++string == '\0')
                        return 0;
        return 1;
}


/*
 * diese Funktion testet, ob der uebergebene String ein
 * directory name ist.
 */
static int
isdirectory (char *a)
{
        struct stat file_status;
        
        if (stat(a, &file_status) == 0)
                if (file_status.st_mode & S_IFDIR)
                        return 1;
        return 0;
}


/*
 * vergleichsfunktion von directory eintraegen.
 * Sortiert directory-namen nach oben. Ansonsten wird
 * alphabetisch sortiert.
 */
static int
compar (struct dirent **a,
        struct dirent **b)
{
        int isdira, isdirb;

        isdira = isdirectory ((*a)->d_name);
        isdirb = isdirectory ((*b)->d_name);
        
        if (isdira == isdirb)
                return strcmp ((*a)->d_name, (*b)->d_name);
        return isdira<isdirb;
}

/*
 * diese Funktion testet, ob ein Directory-Eintrag in der Liste
 * des Fileselektors auftauchen soll oder nicht.
 * ---------- funktioniert so unter Solaris ---------------------
 */
static int
check (struct dirent *a)
{
        if (strcmp (a->d_name, ".") == 0)
                return 0;
        else
                if ((strcmp (mask, "*") == 0) ||
                    (strcmp (a->d_name, "..") == 0))
                        return 1;
                else
                        if (isdirectory (a->d_name))
                                return 1;
                        else
                                return wild_match (a->d_name, mask);
}




/*
 * Callback fuer Mausklicks in der Liste der Fileselector Box
 */
int
ListSelect (Panel_item     item,
            char          *string,
            Xv_opaque      client,
            Panel_list_op  op,
            Event         *event,
            int            row)
{
        switch (op)
        {
                case PANEL_LIST_OP_DESELECT:
                        xv_set
                        (        
                                FilePanelFile,
                                PANEL_VALUE,
                                        "",
                                NULL
                        ); 
                        strcpy (file, "");
                        break;
                case PANEL_LIST_OP_SELECT:
                        xv_set
                        (
                                FilePanelFile,
                                PANEL_VALUE,
                                        string,
                                NULL
                        ); 
                        strcpy (file, string);
                        break;
	/*	default: *//* Leer */
        }
        return XV_OK;
}


/*
 * Funktion, die alle Dateien aus dem uebergebenen Pfad, die auf das
 * uebergebene Muster passen, in die Liste der Fileselector Box eintraegt.
 */
void
InitFileList (char *path, 
              char *mask)
{
        int res, i;
#ifndef SOLARIS
        struct direct **dirlist;

        res = scandir (path, &dirlist,(void *) check,(void *) compar);
#else
	struct dirent **dirlist;
	DirEntryListPtr	 entrylist = NULL;
	DirEntryListPtr	 entrytmp;
	DIR *dirp;
        struct dirent *direntp;

	res = 0;
        dirp = opendir( "." );
        while ( (direntp = readdir( dirp )) != NULL )
	{
	    if (check (direntp))
	    {
		entrytmp = malloc (sizeof (struct DirEntryList));
		entrytmp->direntptr = malloc (direntp->d_reclen);
		memcpy (entrytmp->direntptr, direntp, direntp->d_reclen);
 		entrytmp->nextentry = entrylist;
		entrylist = entrytmp;
		res = res + 1;
	    }
	}
	dirlist = malloc (sizeof (void *) * res);
	for (i=0; i<res; i++)
	{
		dirlist[i] = entrytmp->direntptr;
		entrytmp = entrytmp->nextentry;
	}
	qsort (dirlist, res, sizeof (void *), (void *) compar);
#endif
        
        xv_set
        (        
                FilePanelList,
                XV_SHOW,
                        FALSE,
                NULL
        );
        for (i=0; i<res; i++)
        {
                if (isdirectory (dirlist[i]->d_name))
                        xv_set
                        (
                                FilePanelList,
                                PANEL_LIST_INSERT,
                                        i,
                                PANEL_LIST_STRING,
                                        i,        dirlist[i]->d_name,
                                PANEL_LIST_GLYPH,
                                        i,        Ordner,
                                PANEL_LIST_CLIENT_DATA,
                                        i,        i,
                                NULL
                        );
                else
                        xv_set
                        (
                                FilePanelList,
                                PANEL_LIST_INSERT,
                                        i,
                                PANEL_LIST_STRING,
                                        i,        dirlist[i]->d_name,
                                PANEL_LIST_CLIENT_DATA,
                                        i,        i,
                                NULL
                        );
        } /* for */
#ifdef SOLARIS
        for (i=0; i<res; i++)
	{
		entrytmp = entrylist;
		free (entrytmp->direntptr);
		entrylist = entrylist->nextentry;
		free (entrytmp);
	}
	free (dirlist);
#endif
        xv_set
        (        
                FilePanelList,
                PANEL_LIST_SELECT,
                        0,      TRUE,
                XV_SHOW,
                        TRUE,
                NULL
        );

        panel_paint (FilePanelList, PANEL_CLEAR);
}


/*
 * Loescht alle Eintraege aus der Liste der FileSelector Box.
 */
void
DeleteFileList(void)
{
int        i;
int        noOfRows;

        xv_set
        (
                FilePanelList,
                XV_SHOW,
                        FALSE,
                NULL
        );

        noOfRows = xv_get (FilePanelList, PANEL_LIST_NROWS);
        for (i = noOfRows-1; i>=0; i--)
        {
                xv_set
                (
                        FilePanelList,
                        PANEL_LIST_DELETE,
                                i,
                        NULL
                );
        } /* for */

        xv_set
        (
                FilePanelList,
                XV_SHOW,
                        TRUE,
                NULL
        );
}





/*
 * Event handler fuer das Textfeld Path aus der Fileselector Box
 */
Panel_setting
NewPath (Panel_item  item,
         Event      *event)
{
        strncpy (path, (char *)xv_get (item, PANEL_VALUE), (size_t)MAXPATHLEN);
        DeleteFileList();
        InitFileList (path, mask);
}





/*
 * Event handler fuer das Textfeld Maske, bzw Pattern aus der Fileselector Box
 */
Panel_setting
NewMask (Panel_item  item,
         Event      *event)
{
        strncpy (mask, (char *)xv_get (item, PANEL_VALUE), (size_t)MASKLEN);
        DeleteFileList();
        InitFileList (path, mask);
}





/*
 * Callback fuer den Open button der Fileselektor box
 */
void
FileOk (Panel_item  item,
        Event      *event)
{
#ifndef SOLARIS
        extern char        *getwd(char *);
#endif
        char        actpath[MAXPATHLEN];

	strncpy(file, (char *)xv_get(FilePanelFile, PANEL_VALUE),
		(size_t) MAXPATHLEN);
        if (chdir(file)==-1)
        { /* file is not a directory */
                xv_window_return (dummy);
                HasFile = (strlen(file) != 0);
                xv_destroy_safe (FileFrame);
        }
        else
        { /* file war ein directory, das aber schon zum aktuellen
           * Directory geworden ist.
           */
                DeleteFileList();
#ifdef SOLARIS
		strncpy (path, getcwd(NULL, MAXPATHLEN), (size_t)MAXPATHLEN);
#else
                strncpy (path, getwd(actpath), (size_t)MAXPATHLEN);
#endif
		if (strcmp(file, "..")) strcpy(file, "");
                xv_set
                (
                        FilePanelPath,
                        PANEL_VALUE,
                                path,
                        NULL
                );
                xv_set
                (
                        FilePanelFile,
                        PANEL_VALUE,
                                file,
                        NULL
                );
                InitFileList(path, mask);
        }
}





/*
 * Event handler fuer das Textfeld File aus der Fileselector Box
 */
Panel_setting
NewFile (Panel_item  item,
         Event      *event)
{
        strncpy (file, (char *)xv_get (item, PANEL_VALUE), (size_t)MAXPATHLEN);
/* geht nur, weil FileOk seine Parameter nicht braucht */
        FileOk (item, event);
}





/*
 * Callback fuer den Cancel button der Fileselektorbox
 */
void
FileCancel (Panel_item  item,
            Event      *event)
{
        xv_window_return (dummy);
        HasFile = 0;
        xv_destroy_safe (FileFrame);
}





/*
 * f) Fileselector-Box (eigene Variante)
 */
void
I_XGN_FileSelector (char *orgMask)
{
#ifndef SOLARIS
        extern char *getwd(char *);
#endif

/*        int          i; */

        Rect        *rect; /* Rechteck, das die Lage eines PANEL-Eintrags    */
                           /* enthaelt.                                      */
        Panel        OpenButton; /* Damit Cancel neben Open gelegt           */
                                 /* werden kann.                             */
        char         actpath[MAXPATHLEN];
                        
#ifdef SOLARIS
        strncpy (path, getcwd(NULL, MAXPATHLEN), (size_t)MAXPATHLEN);
#else	                        
        strncpy (path, getwd(actpath), (size_t)MAXPATHLEN);
#endif
        strncpy (mask, orgMask, (size_t)MASKLEN);
        
        HasFile = 0;
        
        FileFrame = (Frame) xv_create
        (
                frame,
#ifdef	FILESELECTOR_CMD
/* die Alternative FILESELECTOR_CMD erzeugt eine Fileselectorbox welche vom
   Windowmanager sofort dargestellt wird, und nicht erst plaziert werden muss.
   (genaue Info siehe Seite 66 XView Programming Manual)
   (Gilt fuer die entsprechenden Optionen der Windowmanager)
   Ist diese Option gesetzt, lassen sich jedoch keine Verzeichnisse mehr
   anwaehlen. Die Fileselectorbox verschwindet, und das Programm haengt.
*/
                FRAME_CMD,
#else
		FRAME,
#endif
                XV_HEIGHT,
                        450,
                XV_WIDTH,
                        380,
                FRAME_SHOW_RESIZE_CORNER,
                        FALSE,
                FRAME_LABEL,
                        "File Browser",
                NULL
        );
/*
 * im Frame immer ein PANEL erzeugen, in das die einzelnen
 * PANEL Elemente dann gelegt werden.
 */
#ifdef	FILESELECTOR_CMD
/* erklaerung siehe oben */
        FilePanel = (Panel) xv_get (FileFrame, FRAME_CMD_PANEL);
        xv_set (FilePanel, PANEL_LAYOUT, PANEL_VERTICAL, NULL);
#else
        FilePanel = (Panel) xv_create
        (
                FileFrame,
                PANEL,
                PANEL_LAYOUT,
                        PANEL_VERTICAL,
                NULL
        );
#endif
        FilePanelPath = (Panel) xv_create
        (
                FilePanel,
                PANEL_TEXT,
                PANEL_VALUE,
                        path,
                PANEL_LABEL_STRING,
                        "Path:",
                PANEL_VALUE_X,
                        70,
                PANEL_VALUE_DISPLAY_LENGTH,
                        40,
                PANEL_VALUE_STORED_LENGTH,
                        MAXPATHLEN,
                PANEL_READ_ONLY,        FALSE,
                PANEL_NOTIFY_PROC,        NewPath,
                NULL
        );

        FilePanelFile = (Panel) xv_create
        (
                FilePanel,
                PANEL_TEXT,
                PANEL_VALUE,
                        file,
                PANEL_LABEL_STRING,
                        "File:",
                PANEL_VALUE_X,
                        70,
                PANEL_VALUE_DISPLAY_LENGTH,
                        40,
                PANEL_VALUE_STORED_LENGTH,
                        255,
                PANEL_READ_ONLY,
                        FALSE,
                PANEL_NOTIFY_PROC,
                        NewFile,
                NULL
        );
        
        FilePanelMask = (Panel) xv_create
        (
                FilePanel,
                PANEL_TEXT,
                PANEL_VALUE,
                        mask,
                PANEL_LABEL_STRING,
                        "Pattern:",
                PANEL_VALUE_X,
                        70,
                PANEL_VALUE_DISPLAY_LENGTH,
                        20,
                PANEL_VALUE_STORED_LENGTH,
                        MASKLEN,
                PANEL_READ_ONLY,
                        FALSE,
                PANEL_NOTIFY_PROC,
                        NewMask,
                NULL
        );
        
        FilePanelList = (Panel) xv_create
        (
                FilePanel,
                PANEL_LIST,
                PANEL_LIST_WIDTH,
                        -1,               /* bis zum Rand des panels   */
                PANEL_LIST_DISPLAY_ROWS,
                        17,               /* Anzahl der Zeilen         */
                PANEL_CHOOSE_ONE,
                        TRUE,             /* nur eine Datei auswaehlen */
                PANEL_READ_ONLY,
                        TRUE,             /* keine Benutzeraenderungen */
                PANEL_NOTIFY_PROC,
                        ListSelect,
                NULL
        );

        InitFileList (path, mask);

        rect = (Rect *) xv_get(FilePanelList, XV_RECT);

        OpenButton = (Panel) xv_create
        (
                FilePanel,
                PANEL_BUTTON,
                PANEL_LABEL_STRING,
                        "Open",
                XV_X,
                        (rect->r_width)/2 - 60,
                PANEL_NOTIFY_PROC,
                        FileOk,
                NULL
        );
        
        xv_set
        (
                FilePanel,
                PANEL_DEFAULT_ITEM,
                        OpenButton,
                NULL
        );
        
        rect = (Rect *) xv_get(OpenButton, XV_RECT);

        (void) xv_create
        (
                FilePanel,
                PANEL_BUTTON,
                XV_X,
                        rect_right(rect) + 10,
                XV_Y,
                        rect->r_top,
                PANEL_LABEL_STRING,
                        "Cancel",
                PANEL_NOTIFY_PROC,
                        FileCancel,
                NULL
        );
        window_fit(FilePanel);
        dummy = xv_window_loop (FileFrame);
}


/*
 * Eingegebenen Dateinamen auslesen
 */
int
I_XGN_GetFileName (char *filename)
{
        if (HasFile)
        {
                strcpy (filename, path);
                strcat (filename, "/");
                strcat (filename, file);
        }
        return HasFile;
}

