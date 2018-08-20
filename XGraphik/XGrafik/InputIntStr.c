
/*
 * InputIntStr.c
 * -------------
 * Implementation der Integer- und Stringeingabe-Fenster
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


int
	LastInteger,		/* zuletzt eingegebener Int	*/
	HasInt,			/* Flag fuer GetLastInt()	*/
	HasString;		/* Flag fuer GetLastString()	*/

char	*LastString;		/* zuletzt eingegebener String	*/

Frame	InputFrame;		/* Rahmen fuer Eingabefenster	*/

Panel	InputPanel;		/* Eingabefenster		*/

/*
 * Funktionsprototypen
 */
void          XGN_InputInt        (char *,
                                   int,
                                   int,
                                   int,
                                   int);
                                              
int           XGN_GetLastInteger  (int *);

void          XGN_InputString     (char *);

int           XGN_GetLastString   (char *);





/*
 * Callback fuer INTEGER-Eingabe
 */
void
InputIntProc (Panel_item  item,
              int         value,
              Event      *event)
{
        LastInteger = value;
}


/*
 * Callback fuer OK-Button bei INTEGER-Eingabe
 */
void
IntOk (Panel_item  item, 
       Event      *event)
{
        Panel panel = (Panel) xv_get (item, PANEL_CLIENT_DATA);
#ifdef DEBUG
printf("In Proc IntOk.\n");
#endif
        xv_destroy_safe (InputFrame);
        HasInt = 1;
        xv_window_return (dummy);
}


/*
 * Callback fuer CANCEL-Button bei INTEGER-Eingabe
 */
void
IntCancel (Panel_item  item, 
           Event      *event)
{
        Panel panel = (Panel) xv_get (item, PANEL_CLIENT_DATA);
#ifdef DEBUG
printf("In Proc IntCancel.\n");
#endif
        xv_destroy_safe (InputFrame);
        HasInt = 0;
        xv_window_return (dummy);
}


/*
 * Callback fuer OK-Button bei STRING-Eingabe
 */
void
StringOk (Panel_item  item,
          Event      *event)
{
        Panel input = (Panel) xv_get
        (
                item,
                PANEL_CLIENT_DATA
        );
        free (LastString);
        LastString = (char *)malloc (strlen(
                (char *)xv_get(input, PANEL_VALUE))+1);
        strcpy (LastString, (char *)xv_get (input, PANEL_VALUE));        
        xv_destroy_safe (InputFrame);
        HasString = 1;
        xv_window_return (dummy);
}


/*
 * Callback fuer CANCEL-Button bei STRING-Eingabe
 */
void
StringCancel (Panel_item  item,
              Event      *event)
{
        Panel panel = (Panel) xv_get (item, PANEL_CLIENT_DATA);
        xv_destroy_safe (InputFrame);
        HasString = 0;
        xv_window_return (dummy);
}


/*
 * Callback fuer STRING-Eingabe
 */
Panel_setting
InputStringProc (Panel_item  item,
                 Event      *event)
{
        Panel input = (Panel) xv_get (item, PANEL_CLIENT_DATA);
}





/*
 * b) Integer-Eingabefenster anzeigen
 */
void
XGN_InputInt (char *prompt,
              int   start,
              int   lbound,
              int   ubound,
              int   ticks)
{
        int help;
        Panel input, prompt1;
        char *text = (char *)malloc (strlen(prompt)+1);
        strcpy (text, prompt);
        HasInt = 0;

#ifdef DEBUG
printf("In Proc IntCancel.\n");
#endif
/*
 * Vorbereitungen:
 * - Grenzen austauschen, falls Obergrenze<Untergrenze
 * - Grenzen ausweiten, falls start<lbound oder start>ubound
 */
        if (ubound<lbound)
        {
                help=ubound;
                ubound=lbound;
                lbound=help;
        }

        if (start<lbound) lbound=start;
        if (start>ubound) ubound=start;
/*
 * Fenster erstellen
 */
#ifdef DEBUG
printf("Parameter sind:\n Prompt:\t %s\t Start:\t %d \n", text, start);
printf("LBound:\t %d\t UBound:\t %d\n", lbound, ubound);
printf("Ticks:\t %d\n", ticks);
printf("Erzeuge InputFrame\n");
#endif

        InputFrame = (Frame) xv_create
        (
                XV_NULL,
                FRAME_CMD,
                FRAME_SHOW_RESIZE_CORNER,
                        FALSE,
                XV_WIDTH,
                        550,
                XV_HEIGHT,
                        100,
                XV_SHOW,
                        TRUE,
                NULL
        );

#ifdef DEBUG
printf("Erzeuge InputPanel\n");
#endif
/*
        InputPanel = (Panel) xv_create
        (
                InputFrame,
                PANEL,
                PANEL_ITEM_X_GAP,
                        25,
                NULL
        );
*/
        InputPanel = (Panel) xv_get (InputFrame, FRAME_CMD_PANEL);

        xv_set (InputPanel, PANEL_ITEM_Y_GAP, 10, NULL);
/*
 * Eingabebereich (Slider) erstellen
 * - Notify-Funktion festlegen
 */
#ifdef DEBUG
printf("Erzeuge Slider\n");
#endif

        prompt1 = (Panel) xv_create
        (
                InputPanel,
                PANEL_MESSAGE,
                PANEL_LABEL_STRING,
                        text,
                PANEL_LABEL_BOLD,
                        TRUE,
                NULL
        );

        
        input = (Panel) xv_create
        (
                InputPanel,
                PANEL_SLIDER,
                PANEL_LABEL_STRING,
                        "",
                PANEL_VALUE,
                        start,
                PANEL_MIN_VALUE,
                        lbound,
                PANEL_MAX_VALUE,
                        ubound,
                PANEL_SLIDER_WIDTH,
                        370,
                PANEL_TICKS,
                        ticks,
                PANEL_NOTIFY_PROC,
                        InputIntProc,
                PANEL_READ_ONLY,
                        FALSE,
                PANEL_SLIDER_END_BOXES,
                        TRUE,
                NULL
        );
/*
 * Buttons erstellen (zentriert unter Slider)
 */
#ifdef DEBUG
printf("Erzeuge OK Button\n");
#endif
        (void) xv_create
        (
                InputPanel,
                PANEL_BUTTON,
                PANEL_LABEL_STRING,
                        "OK",
                PANEL_NOTIFY_PROC,
                        IntOk,
                PANEL_NEXT_ROW,
                        -1,
                XV_X,
                        220,
                NULL
        );
        
#ifdef DEBUG
printf("Erzeuge Cancel Button\n");
#endif
        (void) xv_create
        (
                InputPanel,
                PANEL_BUTTON,
                PANEL_LABEL_STRING,
                        "CANCEL",
                PANEL_NOTIFY_PROC,
                        IntCancel,
                WIN_BELOW,
                        input,
                NULL
        );
/*
 * Groessen anpassen
 */
#ifdef DEBUG
printf("Passe die Groessen an\n");
#endif
	window_fit_height (InputFrame);
	window_fit_width (InputFrame);
        window_fit_width (input);
/*	window_fit (InputFrame);	*/
/*
 * Addresse merken fuer Selbstzerstoerung
 */
        xv_set
        (
                input,
                PANEL_CLIENT_DATA,
                        input,
		NULL
        );
/*
 * Und auf den Bildschirm damit
 */
        xv_set
        (
                InputFrame,
                XV_SHOW,
                         TRUE,
		NULL
        );
        LastInteger = start;
/*
 * Restliches System blockieren, bis Button gedrueckt
 */
#ifdef DEBUG
printf("In Proc IntCancel.\n");
#endif
        dummy = xv_window_loop (InputFrame);
#ifdef DEBUG
printf("In Proc IntCancel.\n");
#endif
}






/*
 * c) Zuletzt eingegebenen Integer-Wert abfragen
 */
int
XGN_GetLastInteger (int *val)
{
        if (HasInt) *val=LastInteger;
        return HasInt;
}






/*
 * d) String-Eingabefenster anzeigen
 */
void
XGN_InputString (char *prompt)
{
        Panel input;

        HasString = 0;
/*
 * Fenster erstellen
 */
        InputFrame = (Frame) xv_create
        (
                XV_NULL,
                FRAME_CMD,
                FRAME_SHOW_RESIZE_CORNER,
                        FALSE,
                XV_HEIGHT,
                        75,
                XV_WIDTH,
                        500,
                XV_SHOW,
                        FALSE,
                NULL
        );
/*        
        InputPanel = (Panel) xv_create
        (
                InputFrame,
                PANEL,
                PANEL_ITEM_X_GAP,
                        25,
                NULL
        );
*/
        InputPanel = (Panel) xv_get (InputFrame, FRAME_CMD_PANEL);
/*
 * Eingabebereich (Text) erstellen
 */
        input = (Panel) xv_create
        (
                InputPanel,
                PANEL_TEXT,
                PANEL_LABEL_STRING,
                        prompt,
                PANEL_VALUE,
                        "",
                PANEL_NOTIFY_PROC,
                        InputStringProc,
                NULL
        );
/*
 * Addresse merken fuer spaetere Selbstzerstoerung
 */
        xv_set 
        (
                input,
                PANEL_CLIENT_DATA,
                        input,
                NULL
        );
/*
 * Buttons erstellen und positionieren
 * - OK-Button merkt sich die Addresse des Text-Bereiches, um
 *   den eingegebenen Text auslesen zu koennen
 */
        (void) xv_create
        (
                InputPanel,
                PANEL_BUTTON,
                PANEL_LABEL_STRING,
                        "OK",
                PANEL_NOTIFY_PROC,
                        StringOk,
                PANEL_NEXT_ROW,
                        -1,
                XV_X,
                        190,
                PANEL_CLIENT_DATA,
                        input,
                NULL
        );
        
        (void) xv_create
        (
                InputPanel,
                PANEL_BUTTON,
                PANEL_LABEL_STRING,
                        "CANCEL",
                PANEL_NOTIFY_PROC,
                        StringCancel,
                NULL
        );
/*
 * Groesse anpassen
 */
	window_fit_height (InputFrame);
	window_fit_width (InputFrame);
/*	window_fit (InputFrame);	*/

/*                
 * Auf den Bildschirm damit
 */
        xv_set
        (
                InputFrame,
                XV_SHOW,
                        TRUE,
		NULL
        );
/*
 * Restliches System blockieren, bis Button gedrueckt wurde
 */
        dummy = xv_window_loop (InputFrame);
}






/*
 * e) Letzten String lesen
 */
int
XGN_GetLastString (char *text)
{
        if (HasString)
                strcpy (text, LastString);
        else
                strcpy (text, "CANCELLED");
        return HasString;
}


