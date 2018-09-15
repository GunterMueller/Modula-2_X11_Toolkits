
A Modula-2 Library for XVIew. Forked from ftp://ftp.fernuni-hagen.de/pub/fachb/inf/pri6/Sopra95-96/

Former XGrafik Libraries from Software Praticum from the Department of Computer Science - Fernuniversitaet Hagen

URL ftp://ftp.fernuni-hagen.de/pub/fachb/inf/pri6/Sopra95-96/ 

This instructions are for a Ubuntu based system, like Mint Linux
a) Install the XView and XView-Def packages:
apt-get install xviewg:i386
apt-get install xviewg-dev:i386 

b) Install the neede Lucida fonts on your system, i.e. unpack the file  ../Lucida-Fonts/lucida-fonts.tar.g

After unpacking you need to run
 1) sudo mkfontdr <Path to the fonts>/75dpi
    sudo mkfontdr <Path to the fonts>/100dpi
 2) xset fp+ <Path to the fonts>/75dpi
    xset fp+ <Path to the fonts>/100dpi
    xset fp+ rehash
