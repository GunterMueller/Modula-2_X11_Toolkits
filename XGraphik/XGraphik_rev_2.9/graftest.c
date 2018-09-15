/*
** A somewhat more complex sample of using XGraphic with C
**
** 22.8.96, A. Schoelling
*/

#include "XGraphic.h"

#include <stdio.h>
#include <string.h>

const int 	TRUE = 1;
const int 	FALSE = 0;

int		px = 0,
		py = 0;
char		Item1[100],
		Item2[100],
		Item3[100],
		Item4[100],
		Item5[100];
int		handle;
int		Laenge,
		Breite,
		Anz,
		l;
int		x1[1000];
int		x2[1000];
int		py1[1000];
int		y2[1000];


void Repaint (void)
{
	XGD_Clear();

	XGD_DrawArrowLine (0, 0, 100, 100, 4, Hellrot);
	XGD_DrawArrowLine (0, 100, 100, 0, 3, Dunkelrot);

	XGD_DrawArrowLine (310, 0, 310, 50, 2, Dunkelblau);
	XGD_DrawArrowLine (320, 50, 320, 0, 2, Hellgruen);

	XGD_DrawArrowLine (0, 200, 100, 200, 5, Mitteltuerkis);
	XGD_DrawArrowLine (100, 220, 0, 220, 1, Schwarz);

	XGD_DrawArrowLine (200, 100, 480, 80, 3, Mittelrot);
	XGD_DrawArrowLine (200, 100, 210, 10, 0, Schwarz);

	XGD_DrawArrowLine (300, 250, 180, 300, 1, Hellgelb);
	XGD_DrawLine (300, 250, 100, 160, 5, Schwarz);

	XGD_DrawCircle (100, 100, 20, FALSE, Dunkelrot);
	XGD_DrawString (100, 100, "abcasbc", Dunkelrot);
	XGD_DrawCircle (px, py, 10, TRUE, Dunkelblau);
	XGD_DrawString (200, 100, Item1, Schwarz);

	XGD_BeginPoly(3);
	XGD_AddPolyPoint (120, 20);
	XGD_AddPolyPoint (240, 45);
	XGD_AddPolyPoint (100, 40);
	XGD_DrawPoly (TRUE, TRUE, 1, Dunkelrot);

	XGD_BeginPoly(4);
	XGD_AddPolyPoint (400, 300);
	XGD_AddPolyPoint (100, 600);
	XGD_AddPolyPoint (600, 600);
	XGD_AddPolyPoint (100, 400);
	XGD_DrawPoly (TRUE, FALSE, 3, Schwarz);
}



int myEvent (void)
{
char	t1[20];

	if (XGE_Button_L())
	{
		px = XGE_X_Position();
		py = XGE_Y_Position();
		return TRUE;
	}
	if (XGE_Button_R())
	{
		XGN_ShowNotice ("Right Mousebutton Pressed!");
		return TRUE;
	}

	t1[0] = XGE_KeyCode();
	t1[1] = 0;

	if (t1[0] != 0)
		XGF_SetLeft (t1);
	if (t1[0] == 0177)
		XGF_SetLeft ("DELETE");
	return FALSE;
}



void Menu (int number)
{
char	Text[100];
int	In1,
	j;

	sprintf (Text, "Menue 1, Item %d", number);

	XGF_SetLeft (Text);

	if (number == 3)
	{
		strcpy (Text, "Enter Integer:");
		XGN_InputInt (Text, 200, 50, 500, 5);
		if (XGN_GetLastInteger (&In1))
		{
			sprintf (Text, "%d", In1);
			XGF_SetRight (Text);
		} else
		{
			XGF_SetRight ("CANCELLED");
		}
	}

	if (number == 1)
	{

		j = 1;
		for (l=0; l<1000; l++)
			XGD_DrawLine (	x1[l], py1[l],
					x2[l], y2[l],
					x2[l] % 4,
					Mitteltuerkis);
		while (j<1000000)
		{
			j++;
			if ((j % 100000) == 0)
			{
				sprintf (Text, "Durchlauf %d", j);
				XGF_SetLeft (Text);
			}
		}
	}
}




void Menu2 (int number)
{
char	Text[100];
int	val;
int	w, h;
char	text2[100];

	switch (number)
	{
		case 1: strcpy (Text, "Menu 2, Item 1");
			break;
		case 2:	strcpy (Text, "Filebrowser ...");
			break;
		case 3:	strcpy (Text, "Arrow Length ...");
			break;
		case 4:	strcpy (Text, "Arrow Width ...");
			break;
	}

	XGF_SetLeft (Text);

	if (number == 1)
	{
		XGN_InputString ("Enter String:");
		if (XGN_GetLastString (Text))
		{
			XGF_SetRight (Text);
			strcpy (Item1, Text);
			XGD_GetStringExtents (Text, &w, &h);
			sprintf (text2, "W: %d; H: %d", w, h);
			XGF_SetLeft (text2);
		}
	}

	if (number == 2)
	{
		XGN_FileSelector ("[!.]*");
		if (XGN_GetFilename (Text))
		{
			XGF_SetRight (Text);
		}
	}

	if (number == 3)
	{
		strcpy (Text, "Enter Arrow Length:");
		val = Laenge;
	}

	if (number == 4)
	{
		strcpy (Text, "Enter Arrow Width:");
		val = Breite;
	}

	if ( (number == 3) || (number == 4) )
	{
		XGN_InputInt (Text, val, 0, 50, 10);
	}

	if (XGN_GetLastInteger (&val))
	{
		if (number == 3)
			Laenge = val;

		if (number == 4)
			Breite = val;
	}
}


int	farbe = 1,
	Groesse,
	Intervall,
	MitteX,
	MitteY;
	

void Animate ()
{
	if (farbe)
		XGD_DrawCircle (MitteX, MitteY, Groesse, TRUE, Schwarz);
	else
		XGD_DrawCircle (MitteX, MitteY, Groesse, TRUE, Weiss);

	farbe = 1 - farbe;
}




void Menu3 (int number)
{
	if (number == 1)
		XG_SetTimer (Intervall, Animate);

	if (number == 2)
		XG_SetTimer (0, Animate);

	if (number == 3)
	{
		XGN_InputInt ("Interval (ms): ", Intervall, 0, 1000, 10);
		if (XGN_GetLastInteger (&Intervall))
		{
			XG_SetTimer (Intervall, Animate);
			Repaint();
		}
	}
}




int main (int argc, char **argv)
{
	MitteX = 200;
	MitteY = 200;
	Groesse = 50;
	Breite = 7;
	Intervall = 100;
	Laenge = 10;

	x1[0] = 0;
	py1[0] = 0;
	x2[0] = 10000;
	y2[0] = 10000;

	for (l=1; l<1000; l++)
	{
		x1[l] = x1[l-1] + 10;
		py1[l] = py1[l-1] + 10;
		x2[l] = x2[l-1] - 10;
		y2[l] = py1[l-1] - 10;
	}
	
	XG_Init (argc, argv, Repaint, myEvent);

	handle = XGM_NewMenu ("TestButton");
	XGM_AppendItem (handle, "Test 1");
	XGM_AppendItem (handle, "Test 2");
	XGM_AppendItem (handle, "Test 3");
	XGM_CreateMenu (handle, Menu);


	handle = XGM_NewMenu ("Button 2");
	XGM_AppendItem (handle, "Choice 1");
	XGM_AppendItem (handle, "Filebrowser ...");
	XGM_AppendItem (handle, "Arrow Length ...");
	XGM_AppendItem (handle, "Arrow Width ...");
	XGM_CreateMenu (handle, Menu2);

	handle = XGM_NewMenu ("Timer");
	XGM_AppendItem (handle, "Start");
	XGM_AppendItem (handle, "Stop");
	XGM_AppendItem (handle, "Speed ...");
	XGM_CreateMenu (handle, Menu3);

	XG_StartMainLoop();

	return 0;
}

