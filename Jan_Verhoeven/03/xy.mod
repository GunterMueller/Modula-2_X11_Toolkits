MODULE xy;

IMPORT x11, InOut;

VAR	x, y,
	task	: INTEGER;


PROCEDURE build;

BEGIN
  x11.setFgC (0FFFF00H);
  x11.setBgC (0FFH);
  x11.Line (10, 10, 400, 240);
  x11.FillRect (20, 135, 100, 200);
  x11.setFgC (0FFH);
  x11.Arc (100, 100, 200, 200, 0, 64*360);
  x11.setFgC (0FF0000H);
  x11.FillArc (50, 50, 250, 50, 0, 270*64);
  x11.setFgC (0FF00FFH);
  x11.printString (100, 200, "Mocka Rulez");
END build;


BEGIN
  x11.setTitle ("Mocka XT test");
  x11.Xinit (400, 400);
  x11.SetFont ("10x20");
  task := x11.NextEvent ();
  build;
  LOOP
    task := x11.NextEvent ();
    IF  task = -1000  THEN
      build
    ELSIF  task < 0  THEN
      task := -task;
      IF  task = ORD ('q')  THEN  EXIT  END
    ELSIF  task > 0  THEN	(* Mouse click!	*)
      x := task DIV 10000;
      y := task MOD 10000;
      InOut.WriteInt (x, 5);
      InOut.WriteInt (y, 6);
      InOut.WriteLn;
      x11.printString (x, y, "Click!");
    END
  END;
  x11.Xclose ()
END xy.
