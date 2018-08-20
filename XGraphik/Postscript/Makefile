# include system dependend variables

include ../Make.$(OSNAME)
 
#
# Die gemeinsamen Variablen belegen!
include ../Make.src


FONTS	= ../Fonts
MC_INCLUDES = -d $(FONTS)

MC_OPTIONS = $(MC_INCLUDES)

INSTALLFILES = Postscript.d Postscript.md Postscript.r Postscript.o

.r.o:
	touch $*.r

.r.a:
	touch $*.r

.r:
	touch $*.r

testps: testps.o Postscript.o
	$(MOCKA) $(MC_OPTIONS) -p testps

testps.o: testps.mi Postscript.o $(FONTS)/Fonts.o
	$(MOCKA) $(MC_OPTIONS) -c testps

Postscript.o: Postscript.mi Postscript.d $(FONTS)/Fonts.o
	$(MOCKA) $(MC_OPTIONS) -c Postscript

Postscript.d: Postscript.md $(FONTS)/Fonts.d
	$(MOCKA) $(MC_OPTIONS) -s Postscript

install: Postscript.o
	@if test ! -d $(MOCKALIBDIR); then\
		mkdir $(MOCKALIBDIR);\
	fi
	install -m 644 $(INSTALLFILES) $(MOCKALIBDIR)

clean:
	rm -f *.o *_errors *% core *.r *.d testps
