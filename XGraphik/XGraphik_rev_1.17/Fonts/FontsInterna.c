/*
** Internes Hilfsmodul zu Fonts.m{d|i}, laedt die .afm-Dateien ein
** und extrahiert die Metriken der Zeichen
*/
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "FontsInterna.h"


/*
  #define SHOWNAMEARRAY
*/



#if defined __linux__
/* Define basepath for .afm files */
char AFMBasePath[] = "/usr/lib/texmf/fonts/psfonts/";
/* Define array of filenames for .afm files */
char AFMFileNames[12][50] = {
  "times/afm/ptmr0.afm", 
  "times/afm/ptmb0.afm",
  "times/afm/ptmri0.afm",
  "times/afm/ptmbi0.afm",
  "helvetica/afm/phvr0.afm",
  "helvetica/afm/phvb0.afm",
  "helvetica/afm/phvro0.afm",
  "helvetica/afm/phvbo0.afm",
  "courier/afm/ncrr.afm",
  "courier/afm/ncrb.afm",
  "courier/afm/ncrri.afm",
  "courier/afm/ncrbi.afm" };
#else
char AFMBasePath[] = "/usr/soft/all/adobe/psres/fonts/";

char AFMFileNames[12][60] = {
  "Times-Roman.font/Times-Roman.afm",
  "Times-Bold.font/Times-Bold.afm",
  "Times-Italic.font/Times-Italic.afm",
  "Times-BoldItalic.font/Times-BoldItalic.afm",
  "Helvetica.font/Helvetica.afm",
  "Helvetica-Bold.font/Helvetica-Bold.afm",
  "Helvetica-Oblique.font/Helvetica-Oblique.afm",
  "Helvetica-BoldOblique.font/Helvetica-BoldOblique.afm",
  "Courier.font/Courier.afm",
  "Courier-Bold.font/Courier-Bold.afm",
  "Courier-Oblique.font/Courier-Oblique.afm",
  "Courier-BoldOblique.font/Courier-BoldOblique.afm" };

#endif


tCharNameSet namelist;


/* Speicher fuer alle Fontmetrikdaten */
tFonts FontArrays;




tCharCode charCode (char *name, 
		    tCharNameSet namelist) {
  int l;
  for (l=128; l<cCharSetSize; l++)
    if ((namelist[l].name) && (strcmp (namelist[l].name, name) == 0))
      return namelist[l].code;
  
/*
  printf ("Achtung! Character %s undefiniert\n", name);
*/
  return 0;
}



void initCharNameSet (tCharNameSet namelist) {
  int i;
  for (i=0; i<cCharSetSize; i++) {
    namelist[i].code = (tCharCode)i;
    strcpy (namelist[i].name, "");
  }
}


int loadNames (char *filename,
		tCharNameSet namelist) {
  int lauf = 0;
  FILE *f;
  char line[100];
  char charName[cCharNameLength];
  tCharCode charCode;

  initCharNameSet (namelist);

  if ((f = fopen(filename, "r")) == NULL) {
    return 1;
  }
  while (!feof(f)) {
    fgets (line, (size_t)99, f);
    sscanf (line, "%c %s", &charCode, charName);

    if (charCode>cNoAsciiChars) {
      strcpy (namelist[charCode].name, charName);
    }
  }
  fclose (f);

#ifdef SHOWNAMEARRAY
  outputNameArray (namelist);
#endif
  return 0;
}




void loadFontMetric (char *fontName,
		     tCharSet charset) {
  int i, 
    width, height, depth, 
    dummy, anzahlZeilen, ccode;
  char name[cCharNameLength],
    *token;
  FILE *f;
  char line[256];




  for (i=0; i<cCharSetSize; i++)
    charset[i].width = charset[i].height = charset[i].depth = 0;
    
  if ((f = fopen (fontName, "r")) == NULL) {
    fprintf (stderr, "\nKann Datei %s nicht oeffnen!\n", fontName);
    exit (EXIT_FAILURE);
  }
  while (!feof(f)) {
    fgets (line, (size_t)255, f);
    if (strstr (line, "StartCharMetrics") == line) {
      sscanf (line, "StartCharMetrics %d", &anzahlZeilen);
      for (i=0; i<anzahlZeilen; i++) {
	width = depth = height = 0;
	fgets (line, (size_t)255, f);
	token = strtok (line, ";");
	sscanf (token, "C %d", &ccode);
	token = strtok (NULL, ";");
	sscanf (token, " WX %d", &width);
	token = strtok (NULL, ";");
	sscanf (token, " N %s", name);
	token = strtok (NULL, ";");
	sscanf (token, " B %d %d %d %d", &dummy, &depth, &dummy, &height);
       	if ((ccode >= cNoAsciiChars) || (ccode == -1))
	  ccode = charCode(name, namelist);
	
	if (ccode != 0) {
	  /* Bei Hoehe und Tiefe Vorzeichen testen */
	  if (depth>0) 
	    depth = 0;
	  else
	    depth = -depth;

	  if (height < 0)
	    height = 0;

	  charset[ccode].width = width;
	  charset[ccode].height = height;
	  charset[ccode].depth = depth;
	}
      } /* for */
    } /* if (strstr) */
  } /* while */
  fclose (f);
}

      


void initFonts (void) {
  char string[200];
  int i, j;

  fprintf(stdout, "Lade Fontdaten");
  if (!loadNames (CHARNAMEFILE, namelist))
    if (!loadNames (CHARNAMEFILE1, namelist))
      if (!loadNames (CHARNAMEFILE2, namelist))
      {
        fprintf (stderr, "\nKann Datei 'iso_8859_1' nicht oeffnen!\n");
        fprintf (stderr, "Versuchte Pfade:\n%s\n%s\n%s\n\n", 
                          CHARNAMEFILE, CHARNAMEFILE1, CHARNAMEFILE2);
        exit (EXIT_FAILURE);
      }

  for (i=0; i<cNoFonts; i++) {
    fprintf(stdout, "."); fflush(stdout);
    strcpy (string, AFMBasePath);
    strcat (string, AFMFileNames[i]);
    loadFontMetric (string, FontArrays[i]);
  }
  fprintf(stdout, "\nFontdaten geladen!\n");
}


int getCharWidth (enumFontnames font,
		  enumFontstyles style,
		  tCharCode Char) {
  return FontArrays[font*4+style][Char].width;
}


int getCharHeight (enumFontnames font,
		   enumFontstyles style,
		   tCharCode Char) {  
  return FontArrays[font*4+style][Char].height;
}


int getCharDepth (enumFontnames font,
		  enumFontstyles style,
		  tCharCode Char) {
  return FontArrays[font*4+style][Char].depth;
}


void outputNameArray (tCharNameSet namelist)
{
  int l;
  for (l=32; l<cCharSetSize; l++) {
    if (namelist[l].name) {
      printf ("%d (%c): %s\n", namelist[l].code,
	      namelist[l].code, namelist[l].name);
    }
  }
}


void outputFont (enumFontnames font,
		 enumFontstyles style) {
  int c;
  for (c=32; c<cCharSetSize; c++)
    printf ("%d '%c': Breite %d Hoehe %d Tiefe %d\n", c, c,
	    getCharWidth (font, style, c), getCharHeight (font, style, c),
	    getCharDepth (font, style, c));
}












