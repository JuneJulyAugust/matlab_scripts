double obstacle_cost(trajEl_t *t, tOptSet *o) {
  const double *x = t->x;
  const double *u = t->u;
  const double *y = t->y;
  double **p = o->p;

  double cost =
      p[2][0] *
      (pow(2.718281828459045, -sqrt(pow(x[0] - y[0], 4.0) +
                                    pow(x[1] - y[1], 4.0) / pow(y[2], 4.0))) *
           y[3] +
       pow(2.718281828459045, -sqrt(pow(x[0] - y[4], 4.0) +
                                    pow(x[1] - y[5], 4.0) / pow(y[6], 4.0))) *
           y[7] +
       pow(2.718281828459045, -sqrt(pow(x[0] - y[8], 4.0) +
                                    pow(x[1] - y[9], 4.0) / pow(y[10], 4.0))) *
           y[11] +
       pow(2.718281828459045, -sqrt(pow(x[0] - y[12], 4.0) +
                                    pow(x[1] - y[13], 4.0) / pow(y[14], 4.0))) *
           y[15]);
  return cost;
}