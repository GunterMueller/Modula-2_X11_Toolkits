/* FontsInterna.h
** Interne Funktionen und Datenstrukturen zur Verarbeitung von
** Fontmetriken
*/

#define cCharSetSize 256
#define cNoAsciiChars 128
#define cNoFamilies 3
#define cNoStyles 4
#define cNoFonts (cNoFamilies*cNoStyles)
#define cCharNameLength 50

#define CHARNAMEFILE "./iso_8859_1"
#define CHARNAMEFILE1 "/usr/mocka/lib/iso_8859_1"
#define CHARNAMEFILE2 "/usr/soft/main/Mocka/lib/iso_8859_1"

typedef struct
{
  int width, height, depth;
} tChar;

typedef unsigned char tCharCode;

typedef tChar tCharSet[cCharSetSize];

typedef tCharSet tFonts[cNoFonts];

typedef enum {
  eFontTimes,
  eFontHelvetica,
  eFontCourier
} enumFontnames;

typedef enum {
  eStyleNormal,
  eStyleBold,
  eStyleItalic,
  eStyleBoldItalic
} enumFontstyles;

typedef struct {
  tCharCode code;
  char name[cCharNameLength];
} tCharName;

typedef tCharName tCharNameSet[cCharSetSize];


tCharCode charCode (char *name, tCharNameSet namelist);


void initCharNameSet (tCharNameSet namelist);

int loadNames (char *filename, tCharNameSet namelist);
/* namelist ist Array! */

void initFonts (void);

void loadFontMetric (char *fontName,
		     tCharSet charset);

int getCharWidth (enumFontnames font,
		  enumFontstyles style,
		  tCharCode Char);

int getCharHeight (enumFontnames font,
		   enumFontstyles style,
		   tCharCode  Char);

int getCharDepth (enumFontnames font,
		  enumFontstyles style,
		  tCharCode Char);

void outputFont (enumFontnames font,
		 enumFontstyles style);

void outputNameArray (tCharNameSet nameset);



