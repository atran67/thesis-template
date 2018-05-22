// update the state vectors when we pick up choice r; v=1 for setting choice; v=-1 for reverting
static inline int sd_update(const sdaux_t *aux, int8_t sr[729], uint8_t sc[324], int r, int v) {
   int c2, min = 10, min_c = 0;

   for (c2 = 0; c2 < 4; ++c2)
      sc[aux->c[r][c2]] += v<<7;

   for (c2 = 0; c2 < 4; ++c2) { // update # available choices
      int r2, rr, cc2, c = aux->c[r][c2];

      if (v > 0) { // move forward
         for (r2 = 0; r2 < 9; ++r2) {
            if (sr[rr = aux->r[c][r2]]++ != 0)
               continue; // update the row status

            for (cc2 = 0; cc2 < 4; ++cc2) {
               int cc = aux->c[rr][cc2];

      	       if (--sc[cc] < min) // update # allowed choices
                  min = sc[cc], min_c = cc; // register the minimum number
            }
         }
      } else { // revert
         const uint16_t *p;

	 for (r2 = 0; r2 < 9; ++r2) {
            if (--sr[rr = aux->r[c][r2]] != 0)
	       continue; // update the row status

            // update the count array
            p = aux->c[rr]; ++sc[p[0]]; ++sc[p[1]]; ++sc[p[2]]; ++sc[p[3]];
         }
      }
   }
   // return the col that has been modified and with the minimal available choices
   return min<<16 | min_c;
}
