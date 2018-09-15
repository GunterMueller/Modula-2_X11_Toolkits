/* 
 * Headerdatei fuer XGraphic
 *
 * zur Verwendung von XGraphic in C/C++
 */

#ifndef XGRAPHIC_H
#define XGRAPHIC_H


typedef void (*tRepaintProc)();
typedef int (*tEventProc)();
typedef void (*tTimerProc)();
typedef void (*tMenuProc)(int);


void
XG_Init (		int		argc,
			char		**argv,
			tRepaintProc	repaintProc,
			tEventProc	eventProc);
/*
** argc, argv: Parametertable and no. of parameters as given to main()
** repaintProc: This function is called each time the window needs to
**		be repainted.
** eventProc:	This function is called each time an event has to be
**		handled.
**
** Important: 	This function has to be called _before_ creating the
**		menus. The window is not created unless XG_StartMainLoop
**		is called.
*/




void
XG_StartMainLoop ();
/*
** Start the execution of the XView-Mainloop. This draws the window and
** returns only _after_ the user has selected and confirmed the QUIT
** menu.
*/




void
XG_SetTimer (		int		IntervalTime,
			tTimerProc	callback);
/*
** Set a timer for a given interval. After IntervalTime microseconds
** have elapsed, callback is executed.
*/




int
XG_Sleep (		int		Seconds);
/*
** Suspend execution for Seconds seconds. Returns remaining
** time. Untested
*/




int
XGM_NewMenu (		char		*label);
/*
** Start creating a menu with the given label as button text.
** The returnvalue is a handle to the menu and is _needed_ for
** appending menu items, for activating/deactivating items and
** for finaly creating the menu.
*/




void
XGM_AppendItem (	int		handle,
			char		*label);
/*
** Append a menuitem labeled 'label' to the menu represented by
** the given handle.
*/




void
XGM_CreateMenu (	int		handle,
			tMenuProc	callback);
/*
** Create the menu represented by 'handle' and append it to the
** menu bar. Whenever a menu item is selected, the callback
** is executed and given the number of the menuitem as a parameter.
** The first item has number 1.
*/




void
XGM_SetItemActivity (	int		handle,
			int		item,
			int		active);
/*
** Activate (active==1) or deactivate (active==0) the menu item
** with the number 'item' in the menu represented by 'handle'.
*/




void
XGF_SetLeft (		char		*text);
/*
** Set the left part of the statusline to display 'text'.
*/




void
XGF_SetRight (		char		*text);
/*
** Same as XGF_SetLeft, but for the right part.
*/




void
XGF_SetDefault ();
/*
** Set both parts of the statusline back to their defaults:
** - left: Copyright message
** - right: Version Number
*/






/*
** _IMPORTANT_:
** All dialogs are application modal, i.e. the user has to
** acknowledge them for the program to continue.
*/


void
XGN_InputInt (		char		*prompt,
			int		start,
			int		minimum,
			int		maximum,
			int		ticks);
/*
** Display a dialogbox for entering an integer.
** 'start' is given as a default value; legal values
** range from 'minimum' to 'maximum'. The slider is
** divided into 'ticks'-1 sections. The text 'prompt'
** is displayed left to the slider and should be as
** short as possible.
*/




int
XGN_GetLastInteger (	int		*retvalue);
/*
** Get the last entered integer value (from the previous call
** to XGN_InputInt). The contents of 'retvalue' is only legal
** if a value!=0 is returned. (I.e., XGN_GetLastInteger() != 0.)
*/




void
XGN_ShowNotice (	char		*text);
/*
** Show a notice, displaying the text 'text', and wait for the
** user to click 'OK'.
*/




void
XGN_InputString (	char		*prompt);
/*
** See InputInt, but the user is prompted for a string.
*/




int
XGN_GetLastString (	char		retvalue[]);
/*
** See XGN_GetLastInteger, but deliver the string.
*/




void
XGN_FileSelector (	char		*mask);
/*
** Display a fileselectorbox. By default, this box only
** displays directories and files matching the given mask.
** The mask can be edited by the user.
*/




int
XGN_GetFilename (	char		retvalue[]);
/*
** Return the name of the selected file. See also
** XGN_GetLastInteger.
*/




int
XGN_YesOrNo (		char		*prompt);
/*
** Show a dialog with the given text. Return 1 if user
** selected 'YES', 0 otherwise.
*/



/*
** Valid values for line widths range from 0 to 5.
** 0 is same width as 1, but uses a faster drawing
** algorithm. (C.f. XLib Reference Manual).
*/

typedef enum 	{
			Weiss,
			Hellrot,	Mittelrot,	Dunkelrot,
			Hellgruen,	Mittelgruen,	Dunkelgruen,
			Hellgelb,	Mittelgelb,	Dunkelgelb,
			Hellblau,	Mittelblau,	Dunkelblau,
			Helltuerkis,	Mitteltuerkis,	Dunkeltuerkis,
			Hellgrau,	Mittelgrau,	Dunkelgrau,
			Schwarz
		} tColor;


void
XGD_NoClipping ();
/*
** Turn off clipping for all drawing functions.
*/




void
XGD_SetClipping (	int		px,
			int		py,
			int		w,
			int		h);
/*
** Turn on clipping; all drawings are clipped against the rectangle
** (px, py) - (px+w, py+h).
*/




void
XGD_DrawArrowLine (	int		x1,
			int		y1,
			int		x2,
			int		y2,
			int		width,
			tColor		color);
/*
** Draw an arrow from (x1,y1) to (x2,y2), using
** color 'color' and a line width of 'width'.
*/




void
XGD_DrawLine (		int		x1,
			int		y1,
			int		x2,
			int		y2,
			int		width,
			tColor		color);
/*
** C.f. XGD_DrawArrowLine, but omit the arrowhead.
*/




void
XGD_DrawCircle (	int		x,
			int		y,
			int		r,
			int		width,
			tColor		color);
/*
** Draw a circle around (x,y) with radius r, linewidth
** width and color color.
*/




void
XGD_DrawString (	int		x,
			int		y,
			char		*text,
			tColor		color);
/*
** Print the string text on (x,y) in color color.
** The coordinates represent the position of the
** baseline.
*/


void
XGD_GetStringExtents (	char		*text,
			int		*w,
			int		*h);
/*
** Get the extents (width and height) of a text.
** All measures in pixels!
*/




void
XGD_BeginPoly (		int		nPoints);
/*
** Start drawing a polygon with nPoints points.
*/




void
XGD_AddPolyPoint (	int		px,
			int		py);
/*
** Append point (px,py) to a started polygon.
*/




void
XGD_DrawPoly (		int		closed,
			int		filled,
			int		width,
			tColor		color);
/*
** Actually draw a started polygon.
** if (filled==1) or (closed==1), the polygon is closed.
** if (filled==1), the polygon is filled.
** The lines are drawn in width width and color color.
*/




void
XGD_Clear ();
/*
** Clear the drawing area.
*/




void
XGD_Flush ();
/*
** Force the XServer to update the contents of the window
** (i.e., to execute all buffered draws).
*/



/*
** All XGE_* functions _should_ only be called inside the
** event callback function. If called elsewhere, the
** results may not be accurate.
*/

int
XGE_Button_L ();

int
XGE_Button_M ();

int
XGE_Button_R ();

int
XGE_MouseMove ();

int
XGE_ButtonEvent ();

/*
** Each of these functions returns 1, when the cause of
** the last event is as indicated by the name (i.e.,
** XGE_Button_R returns 1 if the event was caused by the
** right mouse button, and so on).
*/ 




int
XGE_X_Position ();

int
XGE_Y_Position ();

/*
** Return the x and y position of the mouse at the time
** of the event.
*/




char
XGE_KeyCode ();
/*
** Return the ASCII-Code of the key that caused the event.
*/




int
XGE_KeyPressed ();
/*
** Return 1, if a key is pressed. Usage is not suggested.
*/


#endif
