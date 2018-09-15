/*
** Simple example program for using XGraphic (C Version).
**
** 22.8.96, A. Schoelling
*/

#include "XGraphic.h"


int Event (void)
{
/* Empty function, would normally process the events received.  */
}



void Repaint (void)
{
/* Empty function, would normally do a repaint of the drawing
   area. */
}


int main (int argc, char **argv)
{
	XG_Init (argc, argv, Repaint, Event);
	XG_StartMainLoop();

	return 0;
}

