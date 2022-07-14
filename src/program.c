#include <complex.h>

// Addition of complex numbers x and y

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

// Subtraction of complex numbers x and y

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

// Multiplication of complex numbers x and y

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

// Division of complex numbers x and y

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
