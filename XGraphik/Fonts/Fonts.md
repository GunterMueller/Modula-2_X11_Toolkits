(*****************************************************************************)
(* Modul      : Fonts                                                        *)
(* Funktion   : Definition von Konstanten und Funktionen zur                 *)
(*              Generierung von Fontnamen.                                   *)
(* Autor      : Alexander Schoelling                                         *)
(* Bemerkungen: ./.                                                          *)
(*****************************************************************************)

DEFINITION MODULE Fonts;

FROM Strings IMPORT String;


TYPE    FontFamily =   (
                                Font_Times,
                                Font_Helvetica,
                                Font_Courier,
                                Font_None
                        );

        FontStyle =     (
                                Style_Normal,
                                Style_Fett,
                                Style_Kursiv,
                                Style_FettKursiv,
                                Style_None
                        );



(*****************************************************************************)
PROCEDURE GetCharSpecs (    Family   : FontFamily;                 (* IN     *)
                            Style    : FontStyle;                  (* IN     *)
                            CharCode : CHAR;                       (* IN     *)
                        VAR width    : INTEGER;                    (*    OUT *)
                        VAR height   : INTEGER;                    (*    OUT *)
                        VAR depth    : INTEGER);                   (*    OUT *)
(*****************************************************************************)
(* Funktion : Liefere die Abmessungen eines Zeichens.                        *)
(* Parameter: Family  : Fontfamilie, aus der das Zeichen stammt              *)
(*            Style   : Der Schriftschnitt                                   *)
(*            CharCode: Das abzufragende Zeichen                             *)
(*            width   : Breite der Bounding Box des Zeichens                 *)
(*            height  : Hoehe des ueber der Grundlinie befindlichen Teils    *)
(*                      der Bounding Box                                     *)
(*            depth   : Hoehe des unter der Grundlinie befindlichen Teils    *)
(*                      der Bounding Box                                     *) 
(* Bemerkung: Fuer ein nicht druckbares Zeichen wird -1 fuer Hoehe, Tiefe    *)
(*            und Breite zurueckgeliefert; wenn der Zeichensatz nicht gela-  *)
(*            den wurde, wird jeweils -2 zurueckgeliefert.                   *)
(*                                                                           *)
(*            Die zureckgegebenen Zahlen sind die Werte eines 1 Point Fonts  *)
(*            in Promille, d.h. width = 214 bedeutet, dass das Zeichen in    *)
(*            der Fontgroesse 1 Point 0.214 Point breit ist.                 *)
(*****************************************************************************)




(*****************************************************************************)
PROCEDURE String2FontFamily (    text : String)                    (* IN     *)
                                      : FontFamily;                (*  BACK  *)
(*****************************************************************************)
(* Funktion   : Umwandeln eines Strings in Aufzaehlungselement               *)
(* Parameter  : text - der String                                            *)
(* Rueckgabe  : Element des Aufzaehlungstyp FontFamily                       *)
(* Bemerkungen: Fuer einen nicht existenten Font wird Font_None geliefert.   *)
(*****************************************************************************)



(*****************************************************************************)
PROCEDURE String2FontStyle (    text : String)                     (* IN     *)
                                     : FontStyle;                  (*  BACK  *)
(*****************************************************************************)
(* Funktion   : Umwandeln eines Strings in Aufzaehlungselement               *)
(* Parameter  : text - der String                                            *)
(* Rueckgabe  : Element des Aufzaehlungstyp FontStyle                        *)
(* Bemerkungen: Fuer einen nicht existenten Stil wird Style_None geliefert.  *)
(*****************************************************************************)



(*****************************************************************************)
PROCEDURE FontFamily2String (    family : FontFamily;              (* IN     *)
                             VAR name   : String);                 (*    OUT *)
(*****************************************************************************)
(* Funktion   : Umwandeln Aufzaehlungselement in einen String                *)
(* Parameter  : family - Fontfamilie                                         *)
(*              name   - der String                                          *)
(* Bemerkungen: Fuer family = Font_None wird ein Leerstring geliefert.       *)
(*****************************************************************************)



(*****************************************************************************)
PROCEDURE FontStyle2String (    Style : FontStyle;                 (* IN     *)
                            VAR name   : String);                  (*    OUT *)
(*****************************************************************************)
(* Funktion   : Umwandeln Aufzaehlungselement in einen String                *)
(* Parameter  : family - FontStil                                            *)
(*              name   - der String                                          *)
(* Bemerkungen: Fuer Style = Style_None wird ein Leerstring geliefert.       *)
(*****************************************************************************)



(*****************************************************************************)
PROCEDURE WriteFont (font        : FontFamily);                    (* IN     *)
(*****************************************************************************)
(* Funktion   : Ausgabe eines Fontnamens (siehe auch FontFamilyToString)     *)
(* Parameter  : font - auszugebender Font                                    *)
(* Rueckgabe  : ./.                                                          *)
(* Bemerkungen: ./.                                                          *)
(*****************************************************************************)



(*****************************************************************************)
PROCEDURE WriteStyle (style        : FontStyle);                   (* IN     *)
(*****************************************************************************)
(* Funktion   : Ausgabe eines Fontstyle (siehe auch FontStyleToString)       *)
(* Parameter  : style - auszugebender FontStyle                              *)
(* Rueckgabe  : ./.                                                          *)
(* Bemerkungen: ./.                                                          *)
(*****************************************************************************)



END Fonts.
