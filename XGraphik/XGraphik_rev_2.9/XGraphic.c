/*
** C-Version of XGraphic
**
** Alexander Schoelling, 28.8.96
*/

#include <X11/X.h>
#include <X11/Xlib.h>
#include <X11/Xos.h>
 
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
#include "XGraphic.h"
#include <math.h>



void
XG_Init (		int		argc,
			char		**argv,
			tRepaintProc	repaintProc,
			tEventProc	eventProc)
{
	I_XG_Init (argc, argv, repaintProc, eventProc);
}




void
XG_StartMainLoop ()
{
	I_XG_StartMainLoop();
}




void
XG_SetTimer (		int		IntervalTime,
			tTimerProc	callback)
{
	I_XG_SetTimer (IntervalTime, callback);
}




int
XG_Sleep (		int		Seconds)
{
	return I_XG_Sleep (Seconds);
}




int
XGM_NewMenu (		char		*label)
{
	return I_XGM_NewMenu (label);
}




void
XGM_AppendItem (	int		handle,
			char		*label)
{
	I_XGM_AppendItem (handle, label);
}




void
XGM_CreateMenu (	int		handle,
			tMenuProc	callback)
{
	I_XGM_CreateMenu (handle, callback);
}




void
XGM_SetItemActivity (	int		handle,
			int		number,
			int		active)
{
	I_XGM_SetItemActivity (handle, number, active);
}




void
XGF_SetLeft (		char		*text)
{
	I_XGF_SetLeft (text);
}




void
XGF_SetRight (		char		*text)
{
	I_XGF_SetRight (text);
}




void
XGF_SetDefault ()
{
	I_XGF_SetDefault();
}




void
XGN_InputInt (		char		*prompt,
			int		start,
			int		minimum,
			int		maximum,
			int		ticks)
{
	I_XGN_InputInt (prompt, start, minimum, maximum, ticks);
}




int
XGN_GetLastInteger (	int		*retvalue)
{
	return I_XGN_GetLastInteger (retvalue);
}




void
XGN_InputString (	char		*prompt)
{
	I_XGN_InputString (prompt);
}




int
XGN_GetLastString (	char		retvalue[])
{
	return I_XGN_GetLastString (retvalue);
}




void
XGN_FileSelector (	char		*mask)
{
	I_XGN_FileSelector (mask);
}




int
XGN_GetFilename (	char		retvalue[])
{
	return I_XGN_GetFileName (retvalue);
}




int
XGN_YesOrNo (		char		*prompt)
{
	return I_XGN_YesOrNo (prompt);
}




void
XGN_ShowNotice (	char		*text)
{
	I_XGN_ShowNotice (text);
}




void
XGD_NoClipping()
{
	I_XGD_NoClipping();
}



void
XGD_SetClipping (	int px,
			int py,
			int w,
			int h)
{
	I_XGD_SetClipping (px, py, w, h);
}



void
XGD_DrawArrowLine (	int		x1,
			int		y1,
			int		x2,
			int		y2,
			int		width,
			tColor		color)
/*
** For a detailed description, see XGraphic.m2i.
*/
{
const double	Prozentsatz = 0.6;
const double	b = 7.0;
const double	l = 10.0;

double		Alpha,
		Abstand,
		Beta;

int		Faktor,
		dx,
		dy,
		mx,
		my,
		m1x,
		m1y,
		m2x,
		m2y,
		m3x,
		m3y;



	dx = (x2 - x1);
	dy = (y2 - y1);

	Faktor = 1;


	if (dx == 0)
	{
		if (dy > 0)
		{
			Alpha = M_PI_2;
		} else
		{
			Alpha = -M_PI_2;
		}
	} else if (dy == 0)
	{
		if (dx > 0)
		{
			Alpha = 0.0;
		} else
		{
			Alpha = -M_PI;
		}
	} else
	{
		Alpha = atan ((float)dy / (float)dx);
		if (dx < 0)
		{
			Faktor = -1;
		}
	}

	Beta = M_PI_2 - Alpha;

	Abstand = sqrt ((float)(dx * dx + dy * dy));
	Abstand *= Prozentsatz;


	mx = x1 + Faktor * floor (cos(Alpha) * Abstand);
	my = y1 + Faktor * floor (sin(Alpha) * Abstand);

	m1x = x1 + Faktor * floor (cos(Alpha) * (Abstand + l));
	m1y = y1 + Faktor * floor (sin(Alpha) * (Abstand + l));

	m2x = mx - Faktor * floor (cos(Beta) * b);
	m2y = my + Faktor * floor (sin(Beta) * b);

	m3x = mx + Faktor * floor (cos(Beta) * b);
	m3y = my - Faktor * floor (sin(Beta) * b);

	XGD_DrawLine (x1, y1, x2, y2, width, color);

	I_XGD_SetColor (color);
	I_XGD_DrawTriangle (m1x, m1y, m2x, m2y, m3x, m3y);
} /* XGD_DrawArrorLine */




void
XGD_DrawLine (		int		x1,
			int		y1,
			int		x2,
			int		y2,
			int		width,
			tColor		color)
{
	I_XGD_DrawLine (x1, y1, x2, y2, width, color);
}




void
XGD_DrawCircle (	int		px,
			int		py,
			int		r,
			int		width,
			tColor		color)
{
	I_XGD_DrawCircle (px, py, r, width, color);
}




void
XGD_DrawString (	int		x,
			int		y,
			char		*text,
			tColor		color)
{
	I_XGD_DrawString (x, y, text, color);
}




void
XGD_GetStringExtents (	char		*text,
			int		*w,
			int		*h)
{
int	w1, h1;
	I_XGD_GetStringExtents (text, &w1, &h1);
	*w = w1;
	*h = h1;
}





void
XGD_BeginPoly (		int		nPoints)
{
	I_XGD_BeginPoly (nPoints);
}




void
XGD_AddPolyPoint (	int		px,
			int		py)
{
	I_XGD_AddPolyPoint (px, py);
}




void
XGD_DrawPoly (		int		closed,
			int		filled,
			int		width,
			tColor		color)
{
	I_XGD_DrawPoly (closed, filled, width, color);
}




void
XGD_Clear ()
{
	I_XGD_Clear();
}




void
XGD_Flush ()
{
	I_XGD_Flush();
}




int
XGE_Button_L ()
{
	return I_XGE_Button_L();
}




int
XGE_Button_M ()
{
	return I_XGE_Button_M();
}




int
XGE_Button_R ()
{
	return I_XGE_Button_R();
}




int
XGE_MouseMove ()
{
	return I_XGE_MouseMove();
}




int
XGE_ButtonEvent ()
{
	return I_XGE_ButtonEvent();
}




int
XGE_X_Position ()
{
	return I_XGE_X_Position();
}




int
XGE_Y_Position ()
{
	return I_XGE_Y_Position();
}




char
XGE_KeyCode ()
{
	return I_XGE_KeyCode();
}




int
XGE_KeyPressed ()
{
	return I_XGE_KeyPressed();
}



