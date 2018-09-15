
/*
 * Intern.h
 * --------
 * Include-Dateien, Makros und globale Variablen fuer die
 * XGraphic-Library implementierung in C
 * ---------------------------------------------------------------------------
 * Autor   : Stefan Wohlfeil
 * Datum   : 28.4.94
 * Modif.  : 20.8.96, Alexander Schoelling
 *           Funktionen XG_* in I_XG_* umbenannt."
 * ---------------------------------------------------------------------------
 */


#ifndef INTERN_H
#define INTERN_H

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
Xv_Font		font;

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

void          I_XG_Init             (int,
                                   char **,
                                   void (*)(void),
                                   int (*)(void));

void          I_XG_StartMainLoop    (void);

void          I_XG_SetTimer (int IntervalTime, void (*callback) ());

int           I_XG_Sleep (int Seconds);

void          I_XGF_SetLeft         (char *);

void          I_XGF_SetRight        (char *);

void          I_XGF_SetDefault      (void);

void          I_XGN_ShowNotice      (char *);

int           I_XGN_YesOrNo         (char *);

void          I_XGN_InputInt        (char *,
                                   int,
                                   int,
                                   int,
                                   int);
 
int           I_XGN_GetLastInteger  (int *);
 
void          I_XGN_InputString     (char *);
 
int           I_XGN_GetLastString   (char *);
 
void          I_XGN_FileSelector    (char *);
 
int           I_XGN_GetFileName     (char *);
 

int           I_XGM_NewMenu         (char *);
 
void          I_XGM_AppendItem      (int,
                                   char *);
 
void          I_XGM_CreateMenu      (int,
                                   void (*) (int));
 
void          I_XGM_SetItemActivity (int,
                                   int,
                                   int);

void          I_XGD_Clear           (void);

void	      I_XGD_NoClipping	    (void);

void	      I_XGD_SetClipping     (int, int, int, int);

void          I_XGD_Flush           (void);

void          I_XGD_DrawString      (int, int,
                                   char *,
                                   int);

void	      I_XGD_GetStringExtents (char *,
				      int *,
				      int *);

 
void          I_XGD_DrawCircle      (int, int,
                                   int,
                                   int,
                                   int);
 
void          I_XGD_DrawLine        (int, int,
                                   int, int,
                                   int,
                                   int);
 
void          I_XGD_DrawTriangle (   int, int,
                                   int, int,
                                   int, int);
                         /*          int);   */
 
void          I_XGD_BeginPoly (int);
 
void          I_XGD_AddPolyPoint (int, int);
 
void          I_XGD_DrawPoly (int, int, int, int);

void          I_XGD_SetColor(         int color);

int           I_XGE_Button_L        (void);

int           I_XGE_Button_M        (void);

int           I_XGE_Button_R        (void);

int           I_XGE_MouseMove       (void);

int           I_XGE_ButtonEvent     (void);

int           I_XGE_X_Position      (void);

int           I_XGE_Y_Position      (void);

char          I_XGE_KeyCode         (void);

int           I_XGE_KeyPressed      (void);


#endif
