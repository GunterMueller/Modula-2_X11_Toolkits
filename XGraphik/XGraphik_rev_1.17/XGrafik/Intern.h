
/*
 * Intern.h
 * --------
 * Include-Dateien, Makros und globale Variablen fuer die
 * XGraphic-Library implementierung in C
 * ---------------------------------------------------------------------------
 * Autor   : Stefan Wohlfeil
 * Datum   : 28.4.94
 * ---------------------------------------------------------------------------
 */




/*
 * Teil 0: Einbinden der Header-Files, Typdeklarationen, globale Variablen,
 *         lokale Funktionen
 */


/*
 * b) Globale Definitionen
 */


#define INVERT '!'
#define MASKLEN 50




/*
 * c) Globale Variablen
 */


extern
int             canRedraw,              /* Flag, gibt an ob M2-Repaint  */
                                        /* ausgefuehrt werden darf      */
                LastPopup,
                keypressed;             /* Flag fuer XGE_KeyPressed()   */

extern
Display         *display;

extern
Window          win;                    /* Handle des Hauptfensters     */

extern
Frame           frame;                  /* Hauptrahmen                  */

extern
Panel           panel;                  /* Hauptfenster                 */

extern
Canvas          canvas;                 /* Malbereich                   */

extern
GC              gc;                     /* Graphik-Kontext fuer Repaint */

extern
void    (*CB_Repaint_Function)(void);   /* Modula-2-Callback f. Repaint */
extern
int     (*CB_Event_Function)(void);     /* Modula-2-Callback f. Events  */

extern
char            *leftDefault,
                *rightDefault;

extern
unsigned long   *pixel_table;

extern
Server_image    Ordner,                 /* Image fuer Fileliste         */
                Bild;                   /* Image fuer Icon              */

extern
Icon            icon;

extern
Xv_opaque       dummy;


/*
 * d) Funktions-Prototypen
 */
/*
void          QuitFunction        (Menu,
                                   Menu_item);
*/
void          QuitFunction        (void);

void          RepaintFunction     (Canvas,
                                   Xv_window,
                                   Display *,
                                   Window,
                                   Xv_xrectlist *);

void          InputIntProc        (Panel_item,
                                   int,
                                   Event *);

void          IntOk               (Panel_item,
                                   Event *);

void          IntCancel           (Panel_item,
                                   Event *);

void          StringOk            (Panel_item,
                                   Event *);

void          StringCancel        (Panel_item,
                                   Event *);

Panel_setting InputStringProc     (Panel_item,
                                   Event *);

void          Paint_Event         (Xv_window,
                                   Event *,
                                   Notify_arg);

Notify_value  InterposeKeyboar    (Frame,
                                   Event *,
                                   Notify_arg,
                                   Notify_event_type);

void          XG_Init             (int,
                                   char **,
                                   void (*)(void),
                                   int (*)(void));

void          XG_StartMainLoop    (void);

void          XGF_SetLeft         (char *);

void          XGF_SetRight        (char *);

void          XGF_SetDefault      (void);

void          XGN_ShowNotice      (char *);

int           XGN_YesOrNo         (char *);

void          XGD_Clear           (void);

int           XGE_Button_L        (void);

int           XGE_Button_M        (void);

int           XGE_Button_R        (void);

int           XGE_MouseMove       (void);

int           XGE_ButtonEvent     (void);

int           XGE_X_Position      (void);

int           XGE_Y_Position      (void);

char          XGE_KeyCode         (void);

int           XGE_KeyPressed      (void);

