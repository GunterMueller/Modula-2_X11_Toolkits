IMPLEMENTATION MODULE XGraphic;

FROM Arguments	IMPORT	ArgTable;

FROM MathLib	IMPORT	sqrt, sin, cos, arctan, real, entier;

FROM Strings	IMPORT	String, Assign, Length;

FROM SYSTEM	IMPORT	ADR;

IMPORT Intern_lib;

CONST MaxString = 255;        (* Maximale Laenge eines Strings         *)
                              (* einem Menue.                          *)

PROCEDURE XG_Init (    AnzahlArgumente : SHORTCARD;
                       Argumente       : ArgTable;
                       CB_Repaint      : PROC;
                       CB_Event        : PROC);
BEGIN
        Intern_lib.XG_Init (AnzahlArgumente, Argumente, CB_Repaint, CB_Event);
END XG_Init;





PROCEDURE XG_StartMainLoop ();
BEGIN
        Intern_lib.XG_StartMainLoop();
END XG_StartMainLoop;


PROCEDURE XG_SetTimer (	    IntervalTime : INTEGER;
				callback : PROC);
BEGIN
  Intern_lib.XG_SetTimer (IntervalTime, callback);
END XG_SetTimer;


PROCEDURE XGM_NewMenu (    label : ARRAY OF CHAR) : INTEGER;
VAR Feld : ARRAY[0..MaxString] OF CHAR;
    X : INTEGER;
BEGIN
        Assign(Feld, label);
	X := Intern_lib.XGM_NewMenu (Feld);
        RETURN X;
END XGM_NewMenu;





PROCEDURE XGM_AppendItem (    mHandle : INTEGER;
                              label   : ARRAY OF CHAR);
VAR Feld : ARRAY[0..MaxString] OF CHAR;
BEGIN
        Assign(Feld, label);
        (*label[HIGH(label)+1] := 0C;*)
        Intern_lib.XGM_AppendItem (mHandle, Feld);
END XGM_AppendItem;





PROCEDURE XGM_CreateMenu (    mHandle : INTEGER;
                              Callback : PROC);
BEGIN
        Intern_lib.XGM_CreateMenu (mHandle, Callback);
END XGM_CreateMenu;





PROCEDURE XGM_SetItemActivity (    Handle  : INTEGER;
                                   Nummer  : INTEGER;
                                   Status  : BOOLEAN);
BEGIN
        IF Status THEN
                Intern_lib.XGM_SetItemActivity (Handle, Nummer+1, 1);
        ELSE
                Intern_lib.XGM_SetItemActivity (Handle, Nummer+1, 0);
        END;
END XGM_SetItemActivity;





PROCEDURE XGF_SetLeft (    text : ARRAY OF CHAR);
VAR Feld : ARRAY[0..MaxString] OF CHAR;
BEGIN
        Assign(Feld, text);
        Intern_lib.XGF_SetLeft (Feld);
END XGF_SetLeft;





PROCEDURE XGF_SetRight (    text : ARRAY OF CHAR);
VAR Feld : ARRAY[0..MaxString] OF CHAR;
BEGIN
        Assign(Feld, text);
        Intern_lib.XGF_SetRight (Feld);
END XGF_SetRight;





PROCEDURE XGF_SetDefault();
BEGIN
        Intern_lib.XGF_SetDefault();
END XGF_SetDefault;





PROCEDURE XGN_InputInt (    prompt : ARRAY OF CHAR;
                            start  : INTEGER;
                            lbound : INTEGER;
                            ubound : INTEGER;
                            ticks  : INTEGER);
VAR Text : ARRAY [0..MaxString] OF CHAR;
BEGIN
        Assign (Text, prompt);
        Intern_lib.XGN_InputInt (ADR(Text), start, lbound, ubound, ticks);
END XGN_InputInt;





PROCEDURE XGN_GetLastInteger (VAR Int : INTEGER) : BOOLEAN;
BEGIN
        IF Intern_lib.XGN_GetLastInteger (Int) = 1 THEN
                RETURN TRUE;
        ELSE
                RETURN FALSE;
        END;
END XGN_GetLastInteger;






PROCEDURE XGN_ShowNotice (    Text : ARRAY OF CHAR);
VAR Feld : ARRAY[0..MaxString] OF CHAR;
    i    : CARDINAL;
BEGIN
        Assign(Feld, Text);
        FOR i:=1 TO Length(Feld) DO
                IF Feld[i]='|' THEN
                        Feld[i] := 15C; (* '|' durch NEWLINE ersetzen *)
                END;
        END;
        Intern_lib.XGN_ShowNotice (Feld);
END XGN_ShowNotice;
 
 
 
 
 
PROCEDURE XGN_InputString (     prompt : ARRAY OF CHAR);
VAR text : ARRAY [0..MaxString] OF CHAR; 
BEGIN
        Assign (text, prompt);
        Intern_lib.XGN_InputString (text);
END XGN_InputString;





PROCEDURE XGN_GetLastString (VAR Str : ARRAY OF CHAR) : BOOLEAN;
VAR Feld : ARRAY[0..MaxString] OF CHAR;
BEGIN
        
        IF Intern_lib.XGN_GetLastString (ADR(Feld)) = 1 THEN
                Assign(Str, Feld);
                RETURN TRUE;
        ELSE
                RETURN FALSE;
        END;
END XGN_GetLastString;






PROCEDURE XGN_FileSelector (mask : ARRAY OF CHAR);
VAR t1 : ARRAY [0..MaxString] OF CHAR;
BEGIN
        Assign (t1, mask);
        Intern_lib.XGN_FileSelector (ADR(t1));
END XGN_FileSelector;







PROCEDURE XGN_GetFileName (VAR name : ARRAY OF CHAR) : BOOLEAN;
VAR h : ARRAY [0..MaxString] OF CHAR;
BEGIN
        IF Intern_lib.XGN_GetFileName (ADR(h)) = 1 THEN
                Assign (name, h);
                RETURN TRUE;
        ELSE
                RETURN FALSE;
        END;
END XGN_GetFileName;





PROCEDURE XGN_YesOrNo (    prompt : ARRAY OF CHAR) : BOOLEAN;
VAR t1 : ARRAY [0..255] OF CHAR;
    i  : CARDINAL;
BEGIN
        Assign (t1, prompt);
        FOR i:=1 TO Length (t1) DO
                IF t1[i]='|' THEN
                        t1[i]:=15C; (* '|' durch NEWLINE ersetzen *)
                END;
        END;           
        IF Intern_lib.XGN_YesOrNo (ADR(t1)) = 1 THEN
                RETURN TRUE;
        ELSE
                RETURN FALSE;
        END;
END XGN_YesOrNo;




(************************************************************************)
PROCEDURE XGD_DrawArrowLine (
                            x1 : INTEGER;                    (* IN     *)
                            y1 : INTEGER;                    (* IN     *)
                            x2 : INTEGER;                    (* IN     *)
                            y2 : INTEGER;                    (* IN     *)
			    width : INTEGER;                 (* IN     *)
                            color : tColor);                 (* IN     *)
(************************************************************************)
(*** Eingabe :	Zwei Punkte in der Ebene und eine Farbe			*)
(*** Ausgabe : 								*)
(*** Funktion:	Zeichnet ein Linie von Punkt1 nach Punkt2. Ausserdem	*)
(***		wird nach (Prozentsatz * Laenge) ein kleiner Pfeil ge-	*)
(***		zeichnet, der nach Punkt2 zeigt. Pfeillaenge und 	*)
(***		Breite sind durch Konstanten in der Prozedur definiert.	*)
(************************************************************************)
CONST	Prozentsatz	= 0.6;	(* Wo soll der Pfeil hin ?		*)

	b		= 7.0;	(* Halbe Breite des hinteren Pfeilendes	*)
	l		= 10.0;	(* Laenge des Pfeils			*)

	pi		= 3.1415926536;
VAR	Alpha,			(* Steigung der Linie			*)
	Abstand,		(* Abstand zwischen Endpunkten		*)
	Beta		: REAL;	(* Neigung des hinteren Pfeilendes	*)
	Faktor,			(* Fuer Pfeil nach links		*)
	dx, dy		: INTEGER;	(* klar				*)
	mx, my,			(* Anfangspunkt des Pfeils auf der Linie*)
	m1x, m1y,		(* Endpunkte des Pfeils auf der Linie	*)
	m2x, m2y,		(* rechtes Ende der Basislinie		*)
	m3x, m3y	: INTEGER;	(* linkes Ende der Basislinie	*)
BEGIN
   dx := x2 - x1;
   dy := y2 - y1;
   Faktor := 1;
   IF dx = 0 THEN
      IF dy > 0 THEN Alpha := pi/2.0
                ELSE Alpha := -pi/2.0
      END; (* IF *)
   ELSIF dy = 0 THEN
      IF dx > 0 THEN Alpha := 0.0
                ELSE Alpha := -pi
      END; (* IF *)
   ELSE
      Alpha := arctan( real(dy)/real(dx) );
      IF dx < 0 THEN
         Faktor := -1;	(* Sonst wird der Pfeil am Ursprung der Linie	*)
      END; (* IF *)	(* gespiegelt gezeichnet.			*)
   END; (* IF *)
   Beta  := pi/2.0 - Alpha;
   Abstand := sqrt( real(dx*dx) + real(dy*dy) );
   Abstand := Abstand * Prozentsatz;
   mx := x1 + Faktor * entier(cos(Alpha) * Abstand );
   my := y1 + Faktor * entier(sin(Alpha) * Abstand );
   m1x := x1 + Faktor * entier(cos(Alpha) * (Abstand + l) );
   m1y := y1 + Faktor * entier(sin(Alpha) * (Abstand + l) );
   m2x := mx - Faktor * entier(cos(Beta) * b);
   m2y := my + Faktor * entier(sin(Beta) * b);
   m3x := mx + Faktor * entier(cos(Beta) * b);
   m3y := my - Faktor * entier(sin(Beta) * b);

   XGD_DrawLine (x1, y1, x2, y2, width, color);

   Intern_lib.XGD_SetColor( ORD(color) );
   Intern_lib.XGD_DrawTriangle (	m1x, m1y, m2x, m2y, m3x, m3y );
END XGD_DrawArrowLine;






PROCEDURE XGD_DrawLine (x1, y1, x2, y2, w : INTEGER;
                        color : tColor);
BEGIN
        IF (w>=0) AND (w<=5) THEN
                Intern_lib.XGD_DrawLine (x1, y1, x2, y2, w, ORD(color));
        ELSE
                Intern_lib.XGD_DrawLine (x1, y1, x2, y1, 1, ORD(color));
        END;
END XGD_DrawLine;





PROCEDURE XGD_DrawCircle (x, y, r : INTEGER;
                          filled  : BOOLEAN;
                          color   : tColor);
BEGIN
        IF filled THEN
                Intern_lib.XGD_DrawCircle (x, y, r, 1, ORD(color));
        ELSE
                Intern_lib.XGD_DrawCircle (x, y, r, 0, ORD(color));
        END;
END XGD_DrawCircle;





PROCEDURE XGD_DrawString (x, y : INTEGER;
                          text : ARRAY OF CHAR;
                          color : tColor);
VAR Feld : ARRAY[0..MaxString] OF CHAR;
BEGIN
        Assign(Feld, text);
        Intern_lib.XGD_DrawString (x, y, ADR(Feld), ORD(color));
END XGD_DrawString;


PROCEDURE XGD_BeginPoly (n : INTEGER);
BEGIN
	Intern_lib.XGD_BeginPoly(n);
END XGD_BeginPoly;


PROCEDURE XGD_AddPolyPoint (x, y : INTEGER);
BEGIN
	Intern_lib.XGD_AddPolyPoint (x, y);
END XGD_AddPolyPoint;


PROCEDURE XGD_DrawPoly (closed, filled : BOOLEAN;
                        width : INTEGER;
                        color : tColor);
VAR c, f : INTEGER;
BEGIN
	IF closed THEN c := 1; ELSE c := 0; END;
	IF filled THEN f := 1; ELSE f := 0; END;

	Intern_lib.XGD_DrawPoly (c, f, width, ORD(color));
END XGD_DrawPoly;


PROCEDURE XGD_Clear ();
BEGIN
        Intern_lib.XGD_Clear();
END XGD_Clear;





PROCEDURE XGD_Flush ();
BEGIN
	Intern_lib.XGD_Flush();
END XGD_Flush;





PROCEDURE XGE_Button_L () : BOOLEAN;
BEGIN
        IF Intern_lib.XGE_Button_L() = 1 THEN
                RETURN TRUE;
        ELSE
                RETURN FALSE;
        END;
END XGE_Button_L;





PROCEDURE XGE_Button_M () : BOOLEAN;
BEGIN
        IF Intern_lib.XGE_Button_M() = 1 THEN
                RETURN TRUE;
        ELSE
                RETURN FALSE;
        END;
END XGE_Button_M;





PROCEDURE XGE_Button_R () : BOOLEAN;
BEGIN
        IF Intern_lib.XGE_Button_R() = 1 THEN
                RETURN TRUE;
        ELSE
                RETURN FALSE;
        END;
END XGE_Button_R;

PROCEDURE XGE_MouseMove () : BOOLEAN;
BEGIN
        IF Intern_lib.XGE_MouseMove() = 1 THEN
                RETURN TRUE;
        ELSE
                RETURN FALSE;
        END;
END XGE_MouseMove;

PROCEDURE XGE_ButtonEvent () : BOOLEAN;
BEGIN
        IF Intern_lib.XGE_ButtonEvent() = 1 THEN
                RETURN TRUE;
        ELSE
                RETURN FALSE;
        END;
END XGE_ButtonEvent;

PROCEDURE XGE_X_Position () : INTEGER;
BEGIN
        RETURN Intern_lib.XGE_X_Position();
END XGE_X_Position;





PROCEDURE XGE_Y_Position () : INTEGER;
BEGIN
        RETURN Intern_lib.XGE_Y_Position();
END XGE_Y_Position;





PROCEDURE XGE_KeyCode () : CHAR;
BEGIN
        RETURN Intern_lib.XGE_KeyCode();
END XGE_KeyCode;




PROCEDURE XGE_KeyPressed () : BOOLEAN;
BEGIN
        IF Intern_lib.XGE_KeyPressed() = 1 THEN
                RETURN TRUE;
        ELSE
                RETURN FALSE;
        END;
END XGE_KeyPressed;

PROCEDURE XG_Sleep (Seconds: INTEGER) : INTEGER;
BEGIN
	RETURN Intern_lib.XG_Sleep (Seconds);
END XG_Sleep;

END XGraphic.
