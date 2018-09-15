#
# globales Makefile
#

.SUFFIXES: .ps .dvi .tex .fig

# allgemeine Regel zum TeXen.
.fig.tex:
	fig2dev -L pstex -m 0.5 $< $*.ps
	fig2dev -L pstex_t -M -m 0.5 $< $*.tex

.tex.dvi:
	latex $<
	@if grep 'Rerun to get cross-references' $*.log >/dev/null; then latex $<; fi
	cp $@ $*.ndvi

.dvi.ps:
	dvips -Psek $< -o

all:	*.dvi

XGraphicInstall.dvi:	XGraphicInstall.tex

XGraphicUse.dvi:	XGraphicUse.tex greatersample.m2i simple.m2i xgraphic.m2d

druck:	XGraphicUse.dvi
	dvips -Psek XGraphicUse.dvi -o && psnup -nup 2 XGraphicUse.ps XGraphicUse.2.ps

mocka:
	make -f Makefile.mocka

gpm:
	make -f Makefile.gpm
c:
	make -f Makefile._c

clean:
	rm -f *.aux *.log *.dvi *.ndvi *.ps core
	rm -f *% *~ *.bak
	make -f Makefile.mocka clean
	make -f Makefile._c clean
	make -f Makefile.gpm clean

cinstall:
	make -f Makefile._c install

CInstall:	cinstall

gpminstall:
	make -f Makefile.gpm install

GPMInstall:	gpminstall

mockainstall:
	make -f Makefile.mocka install

MOCKAInstall:	mockainstall

