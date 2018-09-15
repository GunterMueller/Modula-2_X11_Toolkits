# include system dependend variables

include ../Make.$(OSNAME)

#
# Die gemeinsamen Variablen belegen!
include ../Make.src
 
FONTLIB	=	libfonts.a

CHEADERS =	
CFILES	=	FontsInterna.c
COBJECTS =	FontsInterna.o
MDFILES =	
MDOBJECTS =
MIFILES =	
COPTS = -g

INSTALLFILES =	iso_8859_1 Fonts.o Fonts.d Fonts.md Fonts.r\
		FontsInterna.r FontsInterna.o FontsInterna.d
	
.c.o:
	$(CC) $(GCCDEFINES) $(CFLAGS) -c $*.c


all:	Fonts.o TestFont


clean:
	$(RM) $(FONTLIB) *.o *.d *.r *_errors *~ core *% *.bak TestFont

Fonts.o: Fonts.d Fonts.mi FontsInterna.r FontsInterna.o
	$(MOCKA) -c Fonts

Fonts.d: Fonts.md
	$(MOCKA) -s Fonts

FontsInterna.r: FontsInterna.md
	$(MOCKA) -s FontsInterna

FontsInterna.o: FontsInterna.c
	$(CC) $(COPTS) $(GCCDEFINES) -c FontsInterna.c

TestFont: TestFont.o FontsInterna.o
	$(CC) $(COPTS) $(GCCDEFINES) -o TestFont TestFont.o FontsInterna.o

TestFont.o: TestFont.c FontsInterna.o
	$(CC) $(COPTS) -c TestFont.c

install: Fonts.o
	@if test ! -d $(MOCKALIBDIR); then\
		mkdir $(MOCKALIBDIR); \
	fi
	install -m 0644 $(INSTALLFILES) $(MOCKALIBDIR)

