MODULE graftest;

FROM SYSTEM	IMPORT TSIZE;

FROM InOut	IMPORT WriteInt, WriteHex, Write, WriteString, WriteLn, WriteBf;

FROM Arguments IMPORT GetArgs, ArgTable;

FROM XGraphic IMPORT XG_Init, XG_StartMainLoop,
                     XGM_NewMenu, XGM_AppendItem, XGM_CreateMenu,
                     XGF_SetRight, XGF_SetLeft, XGN_InputInt,
                     XGN_GetLastInteger, XGN_ShowNotice, XGD_Clear,
                     XGF_SetDefault, XGD_DrawLine, XGD_DrawString,
		     XGD_DrawArrowLine, XGD_BeginPoly, XGD_DrawPoly,
                     XGD_AddPolyPoint,
                     XGD_DrawCircle, XGE_X_Position, XGE_Y_Position,
                     XGE_Button_L, XGE_Button_R, XGN_InputString,
                     XGN_GetLastString, tColor, XGN_FileSelector,
                     XGN_GetFileName, XGE_KeyCode, XG_SetTimer;

FROM SYSTEM IMPORT ADR, ADDRESS;

FROM Strings IMPORT String, Assign, Append;

FROM NumConv IMPORT Num2Str;

VAR Item1, Item2, Item3, Item4, Item5 : String;
    px, py : INTEGER;
    handle : INTEGER;
    Laenge,			(* Laenge des Pfeils	*)
    Breite	: INTEGER;	(* Breite des Pfeils	*)
    x1, x2, y1, y2 : ARRAY [1..1000] OF INTEGER;

PROCEDURE Repaint ();
BEGIN
    XGD_Clear; 
    XGD_DrawArrowLine (0, 0, 100, 100, 4, Hellrot);
    XGD_DrawArrowLine (0, 100, 100, 0, 3, Dunkelrot);
(* zwei senkrechte Pfeile *)
    XGD_DrawArrowLine (310, 0, 310, 50, 2, Dunkelblau);
    XGD_DrawArrowLine (320, 50, 320, 0, 2, Hellgruen);
(* zwei waagerechte Pfeile *)
    XGD_DrawArrowLine (0, 200, 100, 200, 5, Mitteltuerkis);
    XGD_DrawArrowLine (100, 220, 0, 220, 1, Schwarz);
(* beliebige Pfeile *)
    XGD_DrawArrowLine (200, 100, 480, 80, 3, Mittelrot);
    XGD_DrawArrowLine (200, 100, 210, 10, 0, Schwarz);

    XGD_DrawArrowLine (300, 250, 180, 300, 1, Hellgelb);
    XGD_DrawLine (300, 250, 100, 160, 5, Schwarz);

    XGD_DrawCircle (100, 100, 20, FALSE, Dunkelrot);
    XGD_DrawString (100, 100, "abcasbc", Dunkelrot);
    XGD_DrawCircle (px, py, 10, TRUE, Dunkelblau);
    XGD_DrawString (200, 100, Item1, Schwarz);
    
    XGD_BeginPoly(3);
    XGD_AddPolyPoint (120, 20);
    XGD_AddPolyPoint (240, 45);
    XGD_AddPolyPoint (100, 40);
    XGD_DrawPoly (TRUE, TRUE, 1, Dunkelrot);

    XGD_BeginPoly(4);
    XGD_AddPolyPoint (400, 300);
    XGD_AddPolyPoint (100, 600);
    XGD_AddPolyPoint (600, 600);
    XGD_AddPolyPoint (100, 400);
    XGD_DrawPoly (TRUE, FALSE, 3, Schwarz);

END Repaint;

PROCEDURE Event () : BOOLEAN;
VAR x, y : INTEGER;
    t1, t2 : ARRAY [0..10] OF CHAR;
    b : BOOLEAN;
    ch	: CHAR;
BEGIN	
    IF XGE_Button_L()  THEN
        px := XGE_X_Position ();
        py := XGE_Y_Position ();
        RETURN TRUE;
    END;
    IF XGE_Button_R()  THEN
        XGN_ShowNotice ("Rechter Mausknopf gedrueckt!");
        RETURN TRUE;
    END;
    t1[0] := XGE_KeyCode();
    t1[1] := 0C;
    IF t1[0] <> 0C THEN XGF_SetLeft(t1); END; (* IF *)
    IF t1[0] = 0177C THEN XGF_SetLeft ("DELETE"); END; (* IF *)
    RETURN FALSE;
END Event;

PROCEDURE Menu (number : INTEGER);
VAR Text : String;
    Zahl : String;
    In   : LONGCARD;
    In1  : INTEGER;
    done : BOOLEAN;
    j, l : INTEGER;
BEGIN
    CASE number OF
      1 : Text := "Menue 1, Punkt 1";
    | 2 : Text := "Menue 1, Punkt 2";
    | 3 : Text := "Menue 1, Punkt 3";
    | 4 : Text := "Menue 1, Punkt 4";
    END;
    XGF_SetLeft (Text);
    IF number=3 THEN
        Text := "Ganze Zahl, bitte:";
        XGN_InputInt (Text, 200, 50, 500, 5);
        IF XGN_GetLastInteger (In1) THEN
            In := LONGCARD(In1);
            Num2Str (In, 10, Text, done);
            XGF_SetRight (Text);
        ELSE
            XGF_SetRight ("CANCELLED");
        END;
    END;
    IF number = 1 THEN
    	FOR l := 1 TO 1000 DO
    	    XGD_DrawLine (x1[l], y1[l], x2[l], y2[l], x2[l] MOD 4, Mitteltuerkis);
    	END;
 	    j := 1;
	    WHILE (j<1000000) DO
	        INC(j);
		IF (j MOD 100000) = 0
		THEN
		    Text := "Durchlauf ";
		    Num2Str(j, 10, Zahl, done);
		    Append(Text, Zahl);
		    XGF_SetLeft(Text);
		END; (* IF *)
(*		IF XGE_KeyPressed()
		THEN
		   XGF_SetRight("Unterbrechung!!!");
		END; (* IF *) *)
	    END; (* WHILE *)
    END;
(*    IF number=2 THEN
    	XGN_FileSelector ("[!.]*");
    	IF XGN_GetFileName (Text) THEN
    		XGF_SetRight (Text);
    	END;
    END; *)
END Menu;

PROCEDURE Menu2 (number : INTEGER);
VAR Text, h: String;
BEGIN
    Assign (h, 13C);
    Append (h, 16C);

    CASE number OF
      1 : Text := "Menue 2, Punkt 1";
    | 2 : Text := "Filebrowser ...";
    | 3 : Text := "Pfeillaenge ...";
    | 4 : Text := "Pfeilbreite ...";
    END;
    XGF_SetLeft (Text);
(*    IF number=2 THEN
	IF XGN_YesOrNo ("Please select YES or NO - ABCDEFGHIJKLMNOPQRSTUVWXYZ!") THEN
	    XGF_SetLeft ("YES");
        ELSE
            XGF_SetLeft ("NO");
        END;
    END; *)
    IF number=1 THEN
         XGN_InputString ("Eine Zeichenkette, bitte:");
         IF XGN_GetLastString (Text) THEN
             XGF_SetRight (Text);
             Assign (Item1, Text);
         END;
     END;
    IF number=2 THEN
    	XGN_FileSelector ("[!.]*");
    	IF XGN_GetFileName (Text) THEN
    		XGF_SetRight (Text);
    	END;
    END; (* IF *)
    IF number = 3 THEN
        XGN_InputInt ( "Pfeillaenge : ", Laenge, 0, 50, 10 );
        IF XGN_GetLastInteger (Laenge) THEN
            Repaint();
        END; (* IF *)
    END; (* IF *)
    IF number = 4 THEN
        XGN_InputInt ( "Pfeilbreite : ", Breite, 0, 50, 10 );
        IF XGN_GetLastInteger (Breite) THEN
            Repaint();
        END; (* IF *)
    END; (* IF *)
END Menu2;

VAR
  Groesse, Intervall : INTEGER;
  MitteX, MitteY : INTEGER;
  farbe : BOOLEAN;

PROCEDURE Animate;
BEGIN
  IF farbe THEN
    XGD_DrawCircle (MitteX, MitteY, Groesse, TRUE, Schwarz);
  ELSE
    XGD_DrawCircle (MitteX, MitteY, Groesse, TRUE, Weiss);
  END;
  farbe := NOT farbe;
END Animate;


PROCEDURE Menu3 (number : INTEGER);

BEGIN
   IF number = 1 THEN
     XG_SetTimer (Intervall, PROC(Animate));
   ELSIF number = 2 THEN
     XG_SetTimer (0, PROC(Animate));
   ELSIF number = 3 THEN
     XGN_InputInt ( "Intervall (ms) : ", Laenge, 0, 1000, 10 );
     IF XGN_GetLastInteger (Intervall) THEN
       XG_SetTimer (Intervall, PROC(Animate));
       Repaint();
     END; (* IF *)  
   END;
END Menu3;


VAR Args : ArgTable;
    Anz : SHORTCARD;

BEGIN
    MitteX := 200;
    MitteY := 200;
    Groesse := 50;
    Breite := 7;
    Intervall := 100;
    Laenge := 10;
    x1[1] := 0; y1[1] := 0; x2[1] := 10000; y2[1] := 10000;
    FOR Anz := 2 TO 1000 DO
        x1[Anz] := x1[Anz-1]+10;
        x2[Anz] := x2[Anz-1]-10;
        y1[Anz] := y1[Anz-1]+10;
        y2[Anz] := y1[Anz-1]-10;
    END;

    GetArgs (Anz, Args);
    XG_Init (Anz, Args, PROC(Repaint), PROC(Event));

    Item1:="Test 1";
    Item2:="Test 2";
    Item3:="Test 3";
    Item4:="TestButton";
    handle := XGM_NewMenu (Item4);
    XGM_AppendItem (handle, Item1);
    XGM_AppendItem (handle, Item2);
    XGM_AppendItem (handle, Item3);
    XGM_CreateMenu (handle, PROC(Menu));

    Item1 := "Button 2"; 
    Item2 := "Wahl 1";
    Item3 := "Filebrowser ...";
    Item4 := "Pfeillaenge ...";
    Item5 := "Pfeilbreite ...";
    handle := XGM_NewMenu (Item1);
    XGM_AppendItem (handle, Item2);
    XGM_AppendItem (handle, Item3);
    XGM_AppendItem (handle, Item4);
    XGM_AppendItem (handle, Item5);
    XGM_CreateMenu (handle, PROC(Menu2));

    Item1 := "Start";
    Item2 := "Stop";
    Item3 := "Speed";
    handle := XGM_NewMenu (Item1);
    XGM_AppendItem (handle, Item1);
    XGM_AppendItem (handle, Item2);
    XGM_AppendItem (handle, Item3);
    XGM_CreateMenu (handle, PROC(Menu3));

    XG_StartMainLoop();
END graftest.
