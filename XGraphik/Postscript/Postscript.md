DEFINITION MODULE Postscript;
(******************************************************************************)
(* Modul      : Postscript                                                    *)
(* Autor      : Alexander Schoelling                                          *)
(* Funktion   : Schreiben von Postscript-Anweisungen in eine Datei            *)
(* Bemerkungen: ./.                                                           *)
(******************************************************************************)

FROM Strings    IMPORT  String;

FROM Fonts      IMPORT  FontFamily,
                        FontStyle;

FROM TextIO     IMPORT  File;


(******************************************************************************)
PROCEDURE NewFile (    name : String;                               (* IN     *)
                   VAR handle : File);                              (*    OUT *)
(******************************************************************************)
(* Parameter  : Zu verwendender Dateiname (name), Filehandle der Datei        *)
(* Funktion   : Oeffnet die bezeichnete Datei zum Schreiben; schreibt die     *)
(*              PS-Praeambel in die Datei                                     *)
(* Bemerkungen: Wenn die Datei nicht geoeffnet werden konnte, wird das        *)
(*              Programm abgebrochen!                                         *)
(******************************************************************************)


(******************************************************************************)
PROCEDURE SetFont (    handle : File;                               (* IN     *)
                       family : FontFamily;                         (* IN     *)
                       style  : FontStyle;                          (* IN     *)
                       size   : REAL);                              (* IN     *)
(******************************************************************************)
(* Parameter  : handle - Filehandle aus NewFile                               *)
(*              family - Die Font Familie (Siehe Fonts.md fuer Werte)         *)
(*              style  - Der Font Style   (Siehe Fonts.md fuer Werte)         *)
(*              size   - Fontgroesse in Point                                 *)
(* Funktion   : Schreibt die Anweisungen zur Auswahl des spezifizierten Fonts *)
(*              in die Datei                                                  *)
(******************************************************************************)


(******************************************************************************)
PROCEDURE AddString (    handle : File;                             (* IN     *)
                         px, py : REAL;                             (* IN     *)
                         string : String);                          (* IN     *)
(******************************************************************************)
(* Parameter  : handle - Filehandle aus NewFile                               *)
(*              px, py - Position des Strings                                 *)
(*              string - Zu schreibende Zeichenkette                          *)
(* Funktion   : Schreibt die zur Ausgabe des Strings notwendigen PS-Befehle   *)
(*              in die Datei                                                  *)
(* Bemerkungen: Der Koordinatenursprung liegt in der unteren, linken Ecke!!   *)
(******************************************************************************)


(******************************************************************************)
PROCEDURE NextPage (    handle : File);                             (* IN     *)
(******************************************************************************)
(* Parameter  : handle - FileHandle aus NewFile                               *)
(* Funktion   : Fuegt in die Datei die Befehle fuer einen Seitenwechsel ein.  *)
(******************************************************************************)


(******************************************************************************)
PROCEDURE ImportGraphics (    handle : File;                        (* IN     *)
                              px, py : REAL;                        (* IN     *)
                              name   : String);                     (* IN     *)
(******************************************************************************)
(* Parameter  : handle - Filehandle aus NewFile                               *)
(*              px, py - Positionsangaben                                     *)
(*              name   - Name der einzufuegenden EPSF-Datei                   *)
(* Funktion   : Fuegt die angegebene EPSF-Datei (Encapsulated Postscript) in  *)
(*              die bezeichnete Datei ein                                     *)
(******************************************************************************)

                
(******************************************************************************)
PROCEDURE GetBoundingBox (    name   : String;                      (* IN     *)
                          VAR x1, y1 : REAL;                        (*    OUT *)
                          VAR x2, y2 : REAL);                       (*    OUT *)
(******************************************************************************)
(* Parameter  : name   - Name der EPSF-Datei                                  *)
(*              x1, y1 - Untere, linke Ecke                                   *)
(*              x2, y2 - Obere, rechte Ecke                                   *)
(* Funktion   : liefert die Bounding Box der angegebenen EPSF-Datei           *)
(*              (Encapsulated Postscript). (x1, y1) untere linke Ecke,        *)
(*              (x2, y2) obere rechte Ecke.                                   *)
(******************************************************************************)


(******************************************************************************)
PROCEDURE CloseFile (VAR handle : File);                            (* IN/OUT *)
(******************************************************************************)
(* Parameter  : handle - Filehandle aus NewFile                               *)
(* Funktion   : Schliesst die angegebene Datei                                *)
(* Bemerkungen: handle wird auf NIL gesetzt, Zugriffe auf die Ausgabedatei    *)
(*              sind danach nicht mehr moeglich.                              *)
(******************************************************************************)


END Postscript.
