void foo() {
   int a, b, c;
   int *x, *y, *z;

   x = &a;
   y = &b;
   z = y;
   c = 0;
   *x = c;

   if (c > 1) {
      y = z - 4;
   }
   else {
      y = x - &a;
   }

   z = x;
}
