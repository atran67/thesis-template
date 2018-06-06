void foo() {		Andersen		Steensgaard
   int a, b, c;
   int *x, *y, *z;

   x = &a;		x : {a}			x : {a}
   y = &b;		y : {b}			y : {b}
   z = y;		z : {b}			z : {b}
   c = 0;
   *x = c;

   if (c > 1) {
      y = z - 4;	y : {b, unknown}	y : {b}
   }
   else {
      y = x - &a;	y : {b, unknown}	y : {a, b}
   }

   z = x;		z : {a, b}		z : {a, b}
}
