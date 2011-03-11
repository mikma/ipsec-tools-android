#include <stdio.h>
#include <stdlib.h>

void err(int eval, const char *fmt, ...)
{
  /* TODO */
  fprintf(stderr, "TODO: err\n");
  exit(eval);
}

void errx(int eval, const char *fmt, ...)
{
  /* TODO */
  fprintf(stderr,"TODO: errx\n");
  exit(eval);
}

void warnx(const char *fmt, ...)
{
  /* TODO */
  fprintf(stderr,"TODO: warnx\n");
}
