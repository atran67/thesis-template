// better cache performance by transposing the second matrix
double **mm_mul(int n, double *const *a, double *const *b)
{
        int i, j, k;
        double **m, **c;
        m = mm_init(n); c = mm_init(n);
        for (i = 0; i < n; ++i) // transpose
                for (j = 0; j < n; ++j)
                        c[i][j] = b[j][i];
        for (i = 0; i < n; ++i) {
                double *p = a[i], *q = m[i];
                for (j = 0; j < n; ++j) {
                        double t = 0.0, *r = c[j];
                        for (k = 0; k < n; ++k)
                                t += p[k] * r[k];
                        q[j] = t;
                }
        }
        mm_destroy(n, c);
        return m;
}
