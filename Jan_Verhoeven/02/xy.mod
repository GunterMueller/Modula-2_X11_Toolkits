MODULE xy;

IMPORT x11;

VAR	task	: INTEGER;


PROCEDURE build;

BEGIN
  x11.setFgC (0FFFF00H);
  x11.setBgC (0FFH);
  x11.Line (10, 10, 400, 240);
  x11.FillRect (20, 135, 100, 200);
  x11.Arc (200, 200, 100, 100, 0, 5000);
  x11.FillArc (250, 250, 100, 100, 0, 5000);
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
(*      task := x11.NextEvent (); *)
      build
    ELSIF  task < 0  THEN
      task := -task;
      IF  task = ORD ('q')  THEN  EXIT  END
    END
  END;
  x11.Xclose ()
END xy.
