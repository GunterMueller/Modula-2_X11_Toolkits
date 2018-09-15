FOREIGN MODULE FontsInterna;

PROCEDURE initFonts;

PROCEDURE getCharWidth (    Font  : INTEGER;
			    Style : INTEGER;
			    Char  : CHAR) : INTEGER;

PROCEDURE getCharHeight (    Font  : INTEGER;
			     Style : INTEGER;
			     Char  : CHAR) : INTEGER;

PROCEDURE getCharDepth (    Font  : INTEGER;
			    Style : INTEGER;
			    Char  : CHAR) : INTEGER;
 

END FontsInterna.

			