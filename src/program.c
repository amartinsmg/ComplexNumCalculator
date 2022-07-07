#include <complex.h>

double *cadd(double x_real, double x_imag, double y_real, double y_imag)
{
  double *result;
  double complex x = x_real + x_imag * I,
                 y = y_real + y_imag * I,
                 z = x + y;
  result[0] = creal(z);
  result[1] = cimag(z);
  return result;
}

double *csub(double x_real, double x_imag, double y_real, double y_imag)
{
  double *result;
  double complex x = x_real + x_imag * I,
                 y = y_real + y_imag * I,
                 z = x - y;
  result[0] = creal(z);
  result[1] = cimag(z);
  return result;
}

double *cmul(double x_real, double x_imag, double y_real, double y_imag)
{
  double *result;
  double complex x = x_real + x_imag * I,
                 y = y_real + y_imag * I,
                 z = x * y;
  result[0] = creal(z);
  result[1] = cimag(z);
  return result;
}

double *cdiv(double x_real, double x_imag, double y_real, double y_imag)
{
  double *result;
  double complex x = x_real + x_imag * I,
                 y = y_real + y_imag * I,
                 z = x / y;
  result[0] = creal(z);
  result[1] = cimag(z);
  return result;
}
