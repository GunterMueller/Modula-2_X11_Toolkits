
/*
 * Haupt.c
 * -------
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


#include <X11/X.h>
#include <X11/Xlib.h>
#include <X11/Xos.h>

#include <xview/font.h>
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
#include <xview/cursor.h>

#include "Intern.h"
#if defined SOLARIS
#include "ordner.sun.xbm"
#else
#include "ordner.linux.xbm"
#endif
#include "XGraphic.xbm"



typedef struct
{
  int ButtonL, ButtonM, ButtonR;
  int PosX, PosY;
  unsigned char Key;
  int MouseMove;  /* zeigt an, ob der letzte Event ein Mausmove war */
  int ButtonEvent;/* zeigt an, ob der letzte Event ein ButtonEvent war */
} tEvent;


/*
 * c) Globale Variablen
 */


int             canRedraw=0,            /* Flag, gibt an ob M2-Repaint  */
                                        /* ausgefuehrt werden darf      */
                keypressed;             /* Flag fuer XGE_KeyPressed()   */

Display         *display;		/* Speichert das X-Display	*/

Window          win;                    /* Handle des Hauptfensters     */

Frame           frame;                  /* Hauptrahmen                  */

Panel           panel;                  /* Hauptfenster                 */

Canvas          canvas;                 /* Malbereich                   */

GC              gc;                     /* Graphik-Kontext fuer Repaint */

Xv_Font		font;			/* Der Font fuer XGD_DrawString */

void    (*CB_Repaint_Function)(void);   /* Modula-2-Callback f. Repaint */
int     (*CB_Event_Function)(void);     /* Modula-2-Callback f. Events  */

char            *leftDefault = 
                        "XGraphic Library copyright (c) 1994-96, FernUni Hagen",
                *rightDefault = "RCS Rev. 2.9";

Event           Last;                   /* Event aus XView              */

tEvent          LastEvent;

Scrollbar       hscrollbar, 
                vscrollbar;

Cms             cms;                    /* Farbtabelle                  */

unsigned long   *pixel_table;

Server_image    Ordner,                 /* Image fuer Fileliste         */
                Bild,                   /* Image fuer Icon              */
                Cursor_img;             /* Image fuer Cursor            */

Icon            icon;

Cursor          cursor;        

struct itimerval timer;

Xv_opaque       dummy;


/*
 * Lokale Konstanten. Ich habe Variablen daraus gemacht, damit man Ihren
 * Inhalt im Debugger ansehen kann. Mit #define geht das nicht.
 */

#define		MAXIMALBREITE		1280	/* max. Breite unsrer X-Displays */
#define		MAXIMALHOEHE		1024	/* max. Hoehe unserer X-Displays */


#ifdef	SCROLLBARS
#ifdef	SMALLDISPLAY
#define		CANVAS_STRECKFAKTOR	2
#else
#define		CANVAS_STRECKFAKTOR	5
#endif
#else
#define		CANVAS_STRECKFAKTOR	1
#endif



const int	GESAMTBREITE	= 800;	/* diese Breite hat das Fenster	*/
const int	GESAMTHOEHE	= 600;	/* diese Hoehe hat das Fenster	*/
const int	PANELHOEHE	= 30;
int	CANVASHOEHE; /*		= (GESAMTHOEHE - PANELHOEHE); */
int	VIRTCANVASBREITE;	/* = (CANVAS_STRECKFAKTOR * GESAMTBREITE);  */
int	VIRTCANVASHOEHE;	/* = (CANVAS_STRECKFAKTOR * CANVASHOEHE);   */
/* Initialisieren lassen sich Variablen nur mit Konstanten, nicht mit
   anderen Variablenwerten. Initialisierung findet daher in XG_Init statt.*/




/*
 * e) Lokale Funktionen
 */


#include "Menues.h"

extern int LastMenu;
extern tMenu Menues[20];


/*
 * Callback fuer quit button des Hauptfensters
 * Version fuer Menu-Button
 */
/*
void
QuitFunction (Menu menu, Menu_item menu_item)
{
        if (strcmp ("Confirm", (char *)xv_get (menu_item, MENU_STRING))==0)
                xv_destroy_safe (frame);
}
*/

/*
 * Callback fuer quit button des Hauptfensters
 * Version mit Notice
 */

void
QuitFunction (void)
{
        Xv_notice        question;
        int                result;
        
        question = (Xv_notice) xv_create
        (
                frame,
                NOTICE,
                NOTICE_MESSAGE_STRING,
                        "Are You sure you want to\n\nQUIT ???",
                NOTICE_BUTTON_YES,
                        "YES",
                NOTICE_BUTTON_NO,
                        "NO",
                NOTICE_STATUS,
                        &result,
                NOTICE_LOCK_SCREEN,
                        TRUE,
                XV_SHOW,
                        TRUE,
                NULL
        );
        
        xv_destroy_safe (question);
        
	if (result) 
	{
		int i;
		for (i=0; i<LastMenu; i++)
			xv_destroy_safe (Menues[i].frame);
		xv_destroy_safe (frame);
	}
}



/*
 * Callback fuer REPAINT-Events
 */
void
RepaintFunction (Canvas        canvas,
                 Xv_Window     paint_window,
                 Display      *dpy,
                 Window        xwin,
                 Xv_xrectlist *xrects)
{
        canRedraw = 1;
        win = (Window)xv_get (canvas_paint_window(canvas), XV_XID);
        CB_Repaint_Function();
}





/*
 * Callback fuer EVENT-Handling
 */
void
Paint_Event (Xv_window  window,
             Event     *event,
             Notify_arg arg)
{
        Last = *event;

        keypressed = 0;

	LastEvent.MouseMove = 0;
        LastEvent.ButtonEvent = 0;
        if (event_is_ascii (event))
        {
                LastEvent.Key = event_action (event);
                if (LastEvent.Key == 0xff)
			LastEvent.Key = 0x7f;
		/* printf ("\n(%x)", LastEvent.Key); */
                LastEvent.PosX = event_x (event);
                LastEvent.PosY = event_y (event);
        } else
        {
                 if (event_action (event) == ACTION_SELECT)
                 {
	                LastEvent.ButtonEvent = 1;
                        LastEvent.ButtonM = LastEvent.ButtonR = 0;
                        LastEvent.PosX = event_x (event);
                        LastEvent.PosY = event_y (event);
                        if (event_is_down (event))
                                LastEvent.ButtonL = 1;
                        else
                                LastEvent.ButtonL = 0;
                }
                if (event_action (event) == ACTION_ADJUST)
                {
	                LastEvent.ButtonEvent = 1;
                        LastEvent.ButtonL = LastEvent.ButtonR = 0;
                        LastEvent.PosX = event_x (event);
                        LastEvent.PosY = event_y (event);
                        if (event_is_down (event))
                                LastEvent.ButtonM = 1;
                        else
                                LastEvent.ButtonM = 0;
                }
                if (event_action (event) == ACTION_MENU)
                {
	                LastEvent.ButtonEvent = 1;
                        LastEvent.ButtonM = LastEvent.ButtonL = 0;
                        LastEvent.PosX = event_x (event);
                        LastEvent.PosY = event_y (event);
                        if (event_is_down (event))
                                LastEvent.ButtonR = 1;
                        else
                                LastEvent.ButtonR = 0;
                }
                if ((event_action (event) == LOC_MOVE) ||
                    (event_action (event) == LOC_DRAG))
                {
		        LastEvent.MouseMove = 1;
                        LastEvent.PosX = event_x (event);
                        LastEvent.PosY = event_y (event);
                }
        }
                                        
        if (CB_Event_Function ()) 
                if (canRedraw) CB_Repaint_Function ();
}


/*
 * Interposer fuer Events - funktioniert nicht
 */
Notify_value
InterposeKeyboard (Frame              frame,
                   Event             *event,
                   Notify_arg         arg,
                   Notify_event_type  type)
{
/*
        Notify_value        value;
        
        if (event_is_ascii (event))
                keypressed = 1;
        value = notify_next_event_func (frame, event, arg, type);
        return value;
*/
}







/*
 * Teil 1: Allgemeine Funktionen
 */


/*
 * a) Initialisieren der Bibliothek
 */
void
I_XG_Init (int    AnzahlArgumente,
         char **Argumente,
         void (*CB_Repaint) (void),
         int  (*CB_Event) (void))
{
/*       Menu    men; */

/*
        display = (Display *)malloc (sizeof(Display));
*/
/* Setze die globalen Konstanten richtig */
	XGCValues	gcvalues;

	CANVASHOEHE		= (GESAMTHOEHE - PANELHOEHE);
	VIRTCANVASBREITE	= (CANVAS_STRECKFAKTOR * GESAMTBREITE);
	VIRTCANVASHOEHE		= (CANVAS_STRECKFAKTOR * CANVASHOEHE);


        xv_init
        (
                XV_INIT_ARGC_PTR_ARGV,
                        &AnzahlArgumente,       Argumente,
                NULL
        );                

        Bild = (Server_image) xv_create
        (
                XV_NULL,
                SERVER_IMAGE,
                XV_WIDTH,
                        XGraphic_width,
                XV_HEIGHT,
                        XGraphic_height,
                SERVER_IMAGE_BITS,
                        XGraphic_bits,
                NULL
        );
        
        icon = (Icon) xv_create
        (
                XV_NULL,
                ICON,
                ICON_IMAGE,
                        Bild,
                ICON_LABEL,
                        Argumente[0],
                NULL
        );

        frame = (Frame) xv_create
        (
                XV_NULL,
                FRAME,
                XV_WIDTH,
                        MAXIMALBREITE,
                XV_HEIGHT,
                        MAXIMALHOEHE,
                FRAME_SHOW_FOOTER,
                        TRUE,
                FRAME_LEFT_FOOTER,
                        leftDefault,
                FRAME_RIGHT_FOOTER,
                        rightDefault,
                FRAME_ICON,
                        icon,
                FRAME_LABEL,
                        Argumente[0],
                FRAME_NO_CONFIRM,
                        TRUE,
                NULL
        );

	font = (Xv_Font) xv_find 
	(
		frame, 
		FONT, 
			FONT_NAME,
			/* 	"courier",  */ /* GM */
				"-adobe-courier-medium-o-normal--0-0-75-75-m-0-iso8859-1",
			FONT_SIZE,
				10,
		NULL
	);

	gcvalues.font = (Font)xv_get (font, XV_XID);

	display = (Display *)xv_get (frame, XV_DISPLAY);

	gc = XCreateGC (display, RootWindow (display, DefaultScreen(display)),
			GCFont, &gcvalues);

        panel = (Panel) xv_create
        (
                frame,
                PANEL,
                XV_WIDTH,
                        GESAMTBREITE,
                XV_HEIGHT,
                        PANELHOEHE,
                NULL
        );
/*    mit diesem Klappmenu kann nochmals bestaetigt werden, ob 
      das Programm verlassen werden soll.                            
        men = (Menu) xv_create
        (
                XV_NULL,
                MENU,
                MENU_NOTIFY_PROC,
                        QuitFunction,
                MENU_STRINGS,
                        "Don't Quit",   "Confirm",
                        NULL,
                NULL
        );
*/
        (void) xv_create
        (
                panel,
                PANEL_BUTTON,
                PANEL_LABEL_STRING,
                        "QUIT",
		PANEL_NOTIFY_PROC,
                        QuitFunction,
                PANEL_CLIENT_DATA,
                        frame,
                NULL
        );

        cms = (Cms) xv_create
        (
                XV_NULL,
                CMS,
                CMS_SIZE,
                        20,
	        CMS_NAMED_COLORS,
                        "white",
                        "red2",         "red3",         "red4",
                        "green2",       "green3",       "green4",
                        "yellow2",      "yellow3",      "yellow4",
                        "blue2",        "blue3",        "blue4",
                        "cyan2",        "cyan3",        "cyan4",
                        "gray75",       "gray50",       "gray25",
                        "black",
                        NULL,
                NULL
        );

        canvas = (Canvas) xv_create
        (
                frame,
                CANVAS,
                XV_INSTANCE_NAME,
                        "Workspace",
                WIN_BELOW,
                        panel,
#ifdef	SCROLLBARS
                CANVAS_AUTO_EXPAND,
                        FALSE,
                CANVAS_AUTO_SHRINK,
                        FALSE,
#else
                CANVAS_AUTO_EXPAND,
                        FALSE,
                CANVAS_AUTO_SHRINK,
                        FALSE,
#endif
                CANVAS_X_PAINT_WINDOW,
                        TRUE,
                XV_X,
                        0,
                CANVAS_HEIGHT,
                        VIRTCANVASHOEHE,
                CANVAS_WIDTH,
                        VIRTCANVASBREITE,
                XV_WIDTH,
                        GESAMTBREITE,
                XV_HEIGHT,
                        CANVASHOEHE,
                CANVAS_REPAINT_PROC,
                        RepaintFunction,
                CANVAS_RETAINED,
                        TRUE,
                OPENWIN_AUTO_CLEAR,
                        TRUE,
                NULL
        );
/*
	Cursor_img = (Server_image) xv_create
        (
                XV_NULL,
                SERVER_IMAGE,
                XV_WIDTH,
                        own_cursor_width,
                XV_HEIGHT,
                        own_cursor_height,
                NULL
        );
*/
	cursor = (Cursor) xv_create
        (
                XV_NULL,
                CURSOR,
                CURSOR_SRC_CHAR,
                        OLC_RESIZE,
                NULL
        );


        xv_set (xv_get (canvas, CANVAS_NTH_PAINT_WINDOW, 0),
                WIN_CURSOR, cursor, NULL);


#ifdef	SCROLLBARS
        hscrollbar = (Scrollbar) xv_create
        (
                canvas,
                SCROLLBAR,
                SCROLLBAR_DIRECTION,
                       SCROLLBAR_HORIZONTAL,
                SCROLLBAR_PIXELS_PER_UNIT,
                        10,
                SCROLLBAR_OBJECT_LENGTH,
                        1,
                SCROLLBAR_PAGE_LENGTH,
                        62,
                SCROLLBAR_VIEW_LENGTH,
                        10000,
                SCROLLBAR_SPLITTABLE,
                        TRUE,
                NULL
        );
        
        vscrollbar = (Scrollbar) xv_create
        (
                canvas,
                SCROLLBAR,
                SCROLLBAR_DIRECTION,
                        SCROLLBAR_VERTICAL,
                SCROLLBAR_PIXELS_PER_UNIT,
                        8,
                SCROLLBAR_OBJECT_LENGTH,
                        1,
                SCROLLBAR_PAGE_LENGTH,
                        48,
                SCROLLBAR_VIEW_LENGTH,
                        10000,
                SCROLLBAR_SPLITTABLE,
                        TRUE,
                NULL
        );
#endif     

        window_fit (frame);

        (void) xv_set
        (
                canvas_paint_window (canvas),
                WIN_EVENT_PROC,
                        Paint_Event,
                WIN_IGNORE_EVENTS,
                        WIN_UP_ASCII_EVENTS,    LOC_WINEXIT,
                        LOC_WINENTER,
                        NULL,
                WIN_CONSUME_EVENTS,
                        LOC_MOVE,               LOC_DRAG,
                        WIN_MOUSE_BUTTONS,      WIN_ASCII_EVENTS,
                        WIN_META_EVENTS,
                        NULL,

                NULL
        );

#ifdef	SCROLLBARS
        notify_interpose_event_func
        (
                canvas,
                InterposeKeyboard,
                NOTIFY_SAFE
        );
#endif
        
        pixel_table = (unsigned long *) xv_get (cms, CMS_INDEX_TABLE);
        
        CB_Repaint_Function = CB_Repaint;
        CB_Event_Function   = CB_Event;

        Ordner = (Server_image) xv_create
        (
                XV_NULL,
                SERVER_IMAGE,
                XV_WIDTH,
                        ordner_width,
                XV_HEIGHT,
                        ordner_height,
                SERVER_IMAGE_BITS,
                        ordner_bits,
                NULL
        );
}


/*
 * b) Hauptschleife beginnen
 */
void
I_XG_StartMainLoop (void)
{
        xv_main_loop (frame);
}






/*
 * Teil 3: Statuszeilen manipulieren
 */


/*
 * a) Linker Text
 */
void
I_XGF_SetLeft (char *text)
{
        xv_set
        (
                frame, 
                FRAME_LEFT_FOOTER,
                         text,
                NULL
        );
}


/*
 * b) Rechter Text
 */
void
I_XGF_SetRight (char *text)
{
        xv_set
        (
                frame, 
                FRAME_RIGHT_FOOTER,
                        text,
                NULL
        );
}


/*
 * c) Default-Werte
 */
void
I_XGF_SetDefault (void)
{
        I_XGF_SetLeft (leftDefault);
        I_XGF_SetRight (rightDefault);
}




/*
 * Teil 4: Notices und Notifier
 */


/*
 * a) Meldung anzeigen
 */
void
I_XGN_ShowNotice (char *text)
{
        Xv_notice notice;        
                
        notice = (Xv_notice) xv_create
        (
                frame,
                NOTICE,
                NOTICE_MESSAGE_STRING,
                        text,
                NOTICE_BUTTON_YES,
                        "OK",
                NOTICE_LOCK_SCREEN,
                        TRUE,
                XV_SHOW,
                        TRUE,
                NULL
        );

        xv_destroy_safe (notice);
}




/*
 * g) Ja/Nein-Frage
 */
int
I_XGN_YesOrNo (char *prompt)
{
        Xv_notice        question;
        int                result;
        
        question = (Xv_notice) xv_create
        (
                frame,
                NOTICE,
                NOTICE_MESSAGE_STRING,
                        prompt,
                NOTICE_BUTTON_YES,
                        "YES",
                NOTICE_BUTTON_NO,
                        "NO",
                NOTICE_STATUS,
                        &result,
                NOTICE_LOCK_SCREEN,
                        TRUE,
                XV_SHOW,
                        TRUE,
                NULL
        );
        
        xv_destroy_safe (question);
        
        return result;
}




/*
 * Teil 6: Event-Abfragen
 */


/*
 * a) Maus-Tasten
 */


/*
 * Linke Maustaste
 */
int
I_XGE_Button_L (void)
{
        int h = LastEvent.ButtonL;
        LastEvent.ButtonL = 0;
        return h;
}


/*
 * Mittlere Maustaste
 */
int
I_XGE_Button_M (void)
{
        int h = LastEvent.ButtonM;
        LastEvent.ButtonM = 0;
        return h;
}



/*
 * Rechte Maustaste
 */
int
I_XGE_Button_R (void)
{
        int h = LastEvent.ButtonR;
        LastEvent.ButtonR = 0;
        return h;
}
/*
 * b) Mausposition
 */


/*
 * X-Position
 */
int
I_XGE_X_Position (void)
{
        return LastEvent.PosX;
}



/*
 * Y-Position
 */
int
I_XGE_Y_Position (void)
{
        return LastEvent.PosY;
}

/*
 * ermittelt, ob der letzte Event ein Mousemove war.
 */
int
I_XGE_MouseMove (void)
{
  return LastEvent.MouseMove;
}

/*
 * ermittelt, ob der letzte Event ein Buttonevent war
 */
int
I_XGE_ButtonEvent (void)
{
  return LastEvent.ButtonEvent;
}

/*
 * c) Tastatur
 */
char
I_XGE_KeyCode (void)
{
        if (event_is_ascii (&Last))
                return event_action(&Last);
        else
                return (char)0;
}


/*
 * Ist eine Taste gedrueckt ? - funktioniert nicht, gehoert zu
 * InterposeKeyboard()
 */
int
I_XGE_KeyPressed (void)
{
        return keypressed;
}


/*
 * Setzt den Intervalltimer
 *
 */

void 	(*modula_timer_func) ();

Notify_value Timer_Func ()
{
	modula_timer_func ();
	return NOTIFY_DONE;
}

void
I_XG_SetTimer (int IntervalTime,
		void (*callback) ())
{
	modula_timer_func = callback;
        if (IntervalTime > 0) {
		timer.it_value.tv_usec = (IntervalTime + 20) * 1000;
		timer.it_interval.tv_usec = (IntervalTime + 20) * 1000;
		notify_set_itimer_func (frame, &Timer_Func,
					 ITIMER_REAL, &timer, NULL); 
	} else
		notify_set_itimer_func (frame, NOTIFY_FUNC_NULL,
					ITIMER_REAL, NULL, NULL);

}

int I_XG_Sleep (int Seconds)
{
	return sleep (Seconds);
}


/* Dummyfunktion fuer das unter MTC erstellte Programm */
void BEGIN_Intern_lib ()
{
}
