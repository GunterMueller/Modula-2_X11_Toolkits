
A Modula-2 Library for XVIew. 

Former XGrafik Libraries from Software Praticum from the Department of Computer Science - Fernuniversitaet Hagen

a) For XGraphik_rev_1.17 forked from :
URL ftp://ftp.fernuni-hagen.de/pub/fachb/inf/pri6/Sopra95-96/ 

b) For XGraphik_rev_2.9 forked from :
URL ftp://ftp.fernuni-hagen.de/pub/fachb/inf/pri6/Sopra96-97/ 

This instructions are for a Ubuntu based system, like Mint Linux
First install
a) Install the i386 XView and XView-Def packages:
apt-get install xviewg:i386
apt-get install xviewg-dev:i386 

b) Install the neede Lucida fonts on your system, i.e. unpack the file  ../Lucida-Fonts/lucida-fonts.tar.g

After unpacking you need to run
 1) sudo mkfontdr <Path to the fonts>/75dpi
    sudo mkfontdr <Path to the fonts>/100dpi
 2) xset fp+ <Path to the fonts>/75dpi
    xset fp+ <Path to the fonts>/100dpi
    xset fp+ rehash


Status:
I use the Mocka Compiler version "Mocka 0608m".

The Revision 2.9 of XGraphik is - currently - the version, which "works" best. 

THIS WHOLE PROJECT IS STILL WORK-IN-PROGRESS.

