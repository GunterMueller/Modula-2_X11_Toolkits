
/*
 * Draw.c
 * --------
 * Implementation der Zeichenroutinen von XGraphic
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
#include <xview/font.h>

#include "Intern.h"




void
I_XGD_DrawString (int   x,
                int   y,
                char *text,
                int   c)
{
	if (x<0) x=0;
        if (y<0) y=0;

        if (c<20)
                XSetForeground (display, gc, pixel_table[c]);
        else
                XSetForeground (display, gc, pixel_table[19]);
        XDrawString (display, win, gc, x, y, text, strlen(text));
}


void
I_XGD_GetStringExtents (char *text,
			int  *w,
			int  *h)
{
Font_string_dims	dims;

	(void)xv_get
	(
		font,
		FONT_STRING_DIMS,
			text,
			&dims,
		NULL
	);

	*h = dims.height;
	*w = dims.width;
}


void
I_XGD_NoClipping ()
{
	XSetClipMask (display, gc, None);
}


void
I_XGD_SetClipping (	int px,
			int py,
			int w,
			int h)
{
	XRectangle rect;
	rect.x = 0;
	rect.y = 0;
	rect.width = w;
	rect.height = h;

	XSetClipRectangles (
		display,
		gc,
		px,
		py,
		&rect,
		1,
		Unsorted);
}



/*
 * b) Kreis zeichnen
 */
void
I_XGD_DrawCircle (int x,
                int y,
                int r,
                int filled,
                int c)
{
        if (c<20)
                XSetForeground (display, gc, pixel_table[c]);
        else
                XSetForeground (display, gc, pixel_table[19]);
        if (filled)
                XFillArc (display, win, gc, x-r, y-r, 2*r, 2*r, 0, 360*64);
        else
                XDrawArc (display, win, gc, x-r, y-r, 2*r, 2*r, 0, 360*64);
}


/*
 * c) Linie
 */
void
I_XGD_DrawLine (int x1,
              int y1,
              int x2,
              int y2,
              int w,
              int c)
{
        if ((c>=0) && (c<=19))
                XSetForeground (display, gc, pixel_table[c]);
        else
                XSetForeground (display, gc, pixel_table[19]);
        XSetLineAttributes (display, gc, w, LineSolid, CapRound, JoinRound);
        XDrawLine (display, win, gc, x1, y1, x2, y2);
        XSetLineAttributes (display, gc, 1, LineSolid, CapRound, JoinRound);
}


static int	XGD_Color;

void
I_XGD_SetColor(		int color)
{
	XGD_Color = color;
}

void
I_XGD_DrawTriangle(	int x1,	int y1,
			int x2, int y2,
			int x3, int y3)
		/*	int c)  color */
{
XPoint	punkte[]	= { {x1, y1}, {x2, y2}, {x3, y3}, {x1, y1} };
int	c;	/* ersetzt c in Parameterliste solange Compiler defekt */

	c = XGD_Color;
        if ((c>=0) && (c<=19))
                XSetForeground (display, gc, pixel_table[c]);
        else
                XSetForeground (display, gc, pixel_table[19]);
	XDrawLines (display, win, gc, punkte, 4, CoordModeOrigin);
	XFillPolygon (display, win, gc, punkte, 4 , Convex, CoordModeOrigin);
} /* XGD_DrawTriangle */


XPoint	*PunktArray	=	NULL;
int	LastPoint	=	-1;
int 	MaxPoints	=	0;
void
I_XGD_BeginPoly (int n)
{
	int i;

	if (LastPoint >= 0)
		free (PunktArray);

	PunktArray = (XPoint *)malloc ((n+1)*sizeof(XPoint));

	for (i=0; i<n+1; i++)
		PunktArray[i].x =
		   PunktArray[i].y = 0;
	LastPoint = -1;
        MaxPoints = n;
}

void I_XGD_AddPolyPoint (int x, int y)
{
	if (LastPoint<MaxPoints)
	{
		LastPoint++;
		PunktArray[LastPoint].x = x;
		PunktArray[LastPoint].y = y;
	}
}

void I_XGD_DrawPoly (int closed, int filled, int width, int color)
{
    if ((width<0) || (width>5)) width = 1;

    if (closed || filled)

    if (LastPoint<MaxPoints+1)
    {
	LastPoint++;
	PunktArray[LastPoint] = PunktArray[0];
    }

    if ((color>=0) && (color<=19))
        XSetForeground (display, gc, pixel_table[color]);
    else
        XSetForeground (display, gc, pixel_table[19]);

    XSetLineAttributes (display, gc, width, LineSolid, CapRound, JoinRound);
    XDrawLines (display, win, gc, PunktArray, LastPoint+1, CoordModeOrigin);
    XSetLineAttributes (display, gc, 1, LineSolid, CapRound, JoinRound);

    if (filled)
        XFillPolygon (display, win, gc,
                      PunktArray, LastPoint+1,
                      Complex, CoordModeOrigin);
}


/*
 * d) Loeschen
 */
void
I_XGD_Clear (void)
{
        XClearWindow (display, win);
}




void
I_XGD_Flush (void)
{
	XFlush (display);
}





