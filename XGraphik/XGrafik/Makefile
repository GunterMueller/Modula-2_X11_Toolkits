# include system dependend variables

include ../Make.$(OSNAME)

#
# Die gemeinsamen Variablen belegen!
include ../Make.src

CHEADERS =	Intern.h
CFILES =	Draw.c Filebrowser.c InputIntStr.c Haupt.c Menues.c
COBJECTS =	Draw.o Filebrowser.o InputIntStr.o Haupt.o Menues.o
BITMAPS =	XGraphic.xbm datei.xbm ordner.linux.xbm ordner.sun.xbm
MDFILES =	Intern_lib.md XGraphic.md
MDOBJECTS =	Intern_lib.d Intern_lib.r Intern_lib.o\
		XGraphic.d XGraphic.o
MIFILES =	XGraphic.mi

sourcefiles =	$(CHEADERS) $(MDFILES) $(MIFILES) $(BITMAPS) $(CFILES)

objfiles =	$(MDOBJECTS)

allfiles =	$(sourcefiles) $(objfiles) Makefile

INSTALLFILES =	$(MDOBJECTS) $(MDFILES) $(BITMAPS) XGraphic.r

# Statisch linken
# static =	-link /usr/local/mocka/sys/link-static
static =

.c.o:
	$(CC) $(CFLAGS) -c $*.c

graftest:	graftest.o XGraphic.o Intern_lib.o
	$(MOCKA) -p graftest $(static)

graftest.o:	graftest.mi XGraphic.d Intern_lib.d
	$(MOCKA) -c graftest

XGraphic.d:	XGraphic.md XGraphic.mi Intern_lib.d
	$(MOCKA) -s XGraphic

Draw.o:		Draw.c Intern.h

Filebrowser.o:	Filebrowser.c Intern.h

InputIntStr.o:	InputIntStr.c Intern.h

Menues.o:	Menues.c Intern.h

Haupt.o:	Haupt.c Intern.h

Intern_lib.d:	Intern_lib.md Intern_lib.o
	$(MOCKA) -s Intern_lib

XGraphic.o:	Intern_lib.d XGraphic.d XGraphic.mi
	$(MOCKA) -c XGraphic

Intern_lib.o:	$(COBJECTS) $(BITMAPS)
	ld -r -o Intern_lib.o $(COBJECTS)

install:	$(objfiles)
	@if test ! -d $(MOCKALIBDIR) ; then\
		mkdir $(MOCKALIBDIR); \
	fi
	install -m 0644 $(INSTALLFILES) $(MOCKALIBDIR)

clean:
	rm -f *.o *.r *.d *.log *.aux *% *~ *_errors graftest
