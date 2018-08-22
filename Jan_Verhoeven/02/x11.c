/* This is the foreign part of a Modula-2 Foreign Module called x11
 * 
 * x11 will support just ONE window to do graphic things from within
 * Modula-2.
 * 
 * CopyLeft 2015 Jan Verhoeven, Tilburg
 */

#include <X11/Xlib.h>
#include <X11/Xutil.h>
#include <X11/Xos.h>
#include <time.h>

/* * Global variables * */

Display 	*dis;
Window 		win;
GC 		gc;
XEvent 		event;
KeySym 		key;
Font		font;

int		screen;
int		maxX = 640, maxY = 480;
unsigned long 	black, white;
char		windowTitle [65];
char 		text [255];

/* * Functions * */


void 	mSleep (unsigned int nap)
{
      usleep (1000 * nap);
}


void	SetFont (char * fontname)
{
   font = XLoadFont (dis, fontname);
   XSetFont (dis, gc, font);
}


void	Xinit (int mx, int my) 
{
   dis = XOpenDisplay ( (char *) 0);
   screen = DefaultScreen (dis);
   black = BlackPixel (dis, screen);	/* get color black */
   white = WhitePixel (dis, screen);  	/* get color white */
   win = XCreateSimpleWindow (dis, DefaultRootWindow (dis), 0, 0, mx, my, 5, white, black);
   XSetStandardProperties (dis, win, windowTitle, "MockaX11", None, NULL, 0, NULL);
   XSelectInput (dis, win, ExposureMask|ButtonPressMask|KeyPressMask);
   
   gc = XCreateGC (dis, win, 0, 0);	/* create the Graphics Context */
   
   /* here is another routine to set the foreground and background
    *    colors _currently_ in use in the window.
    * */
   XSetBackground (dis, gc, black);
   XSetForeground (dis, gc, white);
   
   /* clear the window and bring it on top of the other windows */
   XClearWindow (dis, win);
   XMapRaised (dis, win);
}


void	Xclose ()
{
   XFreeGC (dis, gc);
   XDestroyWindow (dis, win);
   XCloseDisplay (dis);
   exit (1);
}


void	Flush (void)
{
   XFlush (dis);
}


int	NextEvent (void)
{
   XNextEvent(dis, &event);
   if (event.type == Expose && event.xexpose.count == 0) 
     {
	/* the window was exposed redraw it! */
	return -1000;
     }
   if (event.type == KeyPress && XLookupString (&event.xkey,text, 255, &key, 0) == 1) 
     {
	/* use the XLookupString routine to convert the invent
	 * KeyPress data into regular text.  Weird but necessary...
	 */
	return (text [0]) * -1;
     }
   if (event.type == ButtonPress) 
     {
	/* tell where the mouse Button was Pressed */
	int x = event.xbutton.x, y = event.xbutton.y;
	return x<<16 + y;
     }
}


void	setTitle (char * text)
{
   strcpy (windowTitle, text);
}


void	setBgC (unsigned long colour)	/* set background colour */
{
   XSetBackground (dis, gc, colour);
}


void	setFgC (unsigned long colour)	/* set foreground colour */
{
   XSetForeground (dis, gc, colour);
}


void	Plot (int x, int y)
{
   XDrawPoint (dis, win, gc, x, y);
}


void	printString (int x, int y, char * string)
{ 
   XDrawString (dis, win, gc, x, y, string, strlen(string));
}


void	Clear (void)
{
   XClearWindow(dis, win);
}


void	Line (int x1, int y1, int x2, int y2)
{
   XDrawLine (dis, win, gc, x1, y1, x2, y2);
}


void	Arc (int x, int y, int width, int height, int arc_start, int arc_stop)
{
   XDrawArc (dis, win, gc, x, y, width, height, arc_start, arc_stop);
}


void	Rect (int x, int y, int width, int height)
{
   XDrawRectangle (dis, win, gc, x, y, width, height);
}


void	FillArc (int x, int y, int width, int height, int arc_start, int arc_stop)
{ 
   XFillArc (dis, win, gc, x, y, width, height, arc_start, arc_stop);
}


void	FillRect (int x, int y, int width, int height)
{
   XFillRectangle (dis, win, gc, x, y, width, height);
}

/* * * * - - - - - - * * * */

