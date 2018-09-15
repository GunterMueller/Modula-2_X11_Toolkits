
/*
 * Intern.c
 * --------
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


#include "Intern.h"


/*
 * Funktionsprototypen
 */
void          Menu_Notify         (Menu,
                                   Menu_item);

int           XGM_NewMenu         (char *);

void          XGM_AppendItem      (int,
                                   char *);

void          XGM_CreateMenu      (int,
                                   void (*) (int));

void          XGM_SetItemActivity (int,
                                   int,
                                   int);




#include "Menues.h"


int	LastMenu = 0,
	chosenMenu;

tMenu	Menues[20];


/*
 * Callback fuer Menues
 */
void
Menu_Notify (Menu       menu,
             Menu_item  menu_item)
{

#ifdef MOCKA
        void (*func)(int, int, int, int, int, int, int, int);
        func = (void (*)(int))xv_get (menu, XV_KEY_DATA, 1234);
        func(0, 0, 0, 0, 0, 0, 0, xv_get (menu_item, XV_KEY_DATA, 1234));
#else
        void (*func)(int);
        func = (void (*)(int))xv_get (menu, XV_KEY_DATA, 1234);
        func(xv_get (menu_item, XV_KEY_DATA, 1234));
#endif
/*
    int nr, lauf, found=-1;
    nr = xv_get (menu, XV_KEY_DATA, 1234);

    found = xv_get (menu_item, XV_KEY_DATA, 1234);

    Menues[nr].notify(found);
*/
}




/*
 * Teil 2: Menue-Funktionen
 */


/*
 * a) Starten einer Menue-Definition
 */
int
XGM_NewMenu (char *label)
{
        Menues[LastMenu].label = (char *)malloc (strlen (label) + 1);
        strcpy (Menues[LastMenu].label, label);
        Menues[LastMenu].anz = 0;
        return LastMenu++;
}


/*
 * b) Menuepunkt eintragen
 */
void
XGM_AppendItem (int   mHandle,
                char *label)
{
        int anz=Menues[mHandle].anz++;
        Menues[mHandle].entries[anz] = (char *)malloc (strlen (label) + 1);
        strcpy (Menues[mHandle].entries[anz], label);
}


/*
 * c) Menue aktivieren
 */
void
XGM_CreateMenu (int    mHandle,
                void (*callback) (int))
{
        int i;
        Menu menu;
        Menu_item mi;

	Menues[mHandle].frame = (Frame) xv_create (XV_NULL, FRAME, NULL);

        menu = (Menu) xv_create (XV_NULL, MENU, 
   		MENU_GEN_PIN_WINDOW, frame, Menues[mHandle].label, 
                NULL);

        for (i=0; i<Menues[mHandle].anz; i++)
        {
                mi = (Menu_item) xv_create
                (
                        XV_NULL,
                        MENUITEM,
                        MENU_STRING,
                                Menues[mHandle].entries[i],
                        MENU_NOTIFY_PROC,
                                Menu_Notify,
			XV_KEY_DATA,
				1234,	i+1,
                        MENU_RELEASE,
                        NULL
                );
                
                xv_set 
                (
                        menu,
                        MENU_APPEND_ITEM,
                                mi,
                        NULL
                );
        }

        xv_set
        (
                menu,
                XV_KEY_DATA,
                        1234,   callback,
                NULL
        );

        (void)         xv_create 
        (
                panel,
                PANEL_BUTTON,
                PANEL_LABEL_STRING,
                         Menues[mHandle].label,
                PANEL_ITEM_MENU,
                         menu,
                NULL
        );
        Menues[mHandle].contents=menu;
	Menues[mHandle].notify=callback;
}





/*
 * d) Menueeintrag aktivieren/deaktivieren
 */
void
XGM_SetItemActivity (int mHandle,
                     int Number,
                     int Stat)
{
        if (Stat)
                xv_set
                (
                        (Menu_item) xv_get
                        (
                                Menues[mHandle].contents,
                                MENU_NTH_ITEM,
                                        Number,
                                NULL
                        ),
                        MENU_INACTIVE,
                                FALSE,
                        NULL
                );
        else
                xv_set
                (
                        (Menu_item) xv_get
                        (
                                Menues[mHandle].contents,
                                MENU_NTH_ITEM,
                                        Number,
                                NULL
                        ),
                        MENU_INACTIVE,
                                TRUE,
                        NULL
                );
}




