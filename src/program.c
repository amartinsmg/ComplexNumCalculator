#include <complex.h>
#include <stdlib.h>


/**
  Calculates the sum of two complex numbers in the form of (a+bi) using the formula z = x + y
  @param x_real - The real part of the first complex number.
  @param x_imag - The imaginary part of the first complex number.
  @param y_real - The real part of the second complex number.
  @param y_imag - The imaginary part of the second complex number.
  @return - A pointer to an array of size 2 containing the real and imaginary parts of the result.
*/

double *cadd(double x_real, double x_imag, double y_real, double y_imag)
{
  double *result = (double *)malloc(sizeof(*result) * 2);
  double complex x = x_real + x_imag * I,
                 y = y_real + y_imag * I,
                 z = x + y;
  result[0] = creal(z);
  result[1] = cimag(z);
  return result;
}


/**
  Calculates the subtraction of two complex numbers in the form of (a+bi) using the formula z = x - y
  @param x_real - The real part of the first complex number.
  @param x_imag - The imaginary part of the first complex number.
  @param y_real - The real part of the second complex number.
  @param y_imag - The imaginary part of the second complex number.
  @return - A pointer to an array of size 2 containing the real and imaginary parts of the result.
*/

double *csub(double x_real, double x_imag, double y_real, double y_imag)
{
  double *result = (double *)malloc(sizeof(*result) * 2);
  double complex x = x_real + x_imag * I,
                 y = y_real + y_imag * I,
                 z = x - y;
  result[0] = creal(z);
  result[1] = cimag(z);
  return result;
}


/**
  Calculates the multiplication of two complex numbers in the form of (a+bi) using the formula z = x * y
  @param x_real - The real part of the first complex number.
  @param x_imag - The imaginary part of the first complex number.
  @param y_real - The real part of the second complex number.
  @param y_imag - The imaginary part of the second complex number.
  @return - A pointer to an array of size 2 containing the real and imaginary parts of the result.
*/

double *cmul(double x_real, double x_imag, double y_real, double y_imag)
{
  double *result = (double *)malloc(sizeof(*result) * 2);
  double complex x = x_real + x_imag * I,
                 y = y_real + y_imag * I,
                 z = x * y;
  result[0] = creal(z);
  result[1] = cimag(z);
  return result;
}


/**
  Calculates the division of two complex numbers in the form of (a+bi) using the formula z = x / y
  @param x_real - The real part of the first complex number.
  @param x_imag - The imaginary part of the first complex number.
  @param y_real - The real part of the second complex number.
  @param y_imag - The imaginary part of the second complex number.
  @return - A pointer to an array of size 2 containing the real and imaginary parts of the result.
*/

double *cdiv(double x_real, double x_imag, double y_real, double y_imag)
{
  double *result = (double *)malloc(sizeof(*result) * 2);
  double complex x = x_real + x_imag * I,
                 y = y_real + y_imag * I,
                 z = x / y;
  result[0] = creal(z);
  result[1] = cimag(z);
  return result;
}
