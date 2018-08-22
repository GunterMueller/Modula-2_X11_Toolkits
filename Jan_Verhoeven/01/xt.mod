MODULE xt;

IMPORT x11;

VAR	task	: INTEGER;

BEGIN
  x11.Xinit (400, 400);
  LOOP
    task := x11.NextEvent ();
    IF  task < 0  THEN
      task := -task;
      IF  task = ORD ('q')  THEN  EXIT  END
    END
  END;
  x11.Xclose ()
END xt.
