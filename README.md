# ComplexNumCalculator

This is a personal project for a Web Complex Numbers Calculator.

> In mathematics, a complex number is an element of a number system that extends the real numbers with a specific element denoted i, called the imaginary unit and satisfying the equation i2 = −1; every complex number can be expressed in the form a + bi, where a and b are real numbers. Because no real number satisfies the above equation, i was called an imaginary number by René Descartes. For the complex number a + bi, a is called the real part and b is called the imaginary part.
>
> -- <cite>[Wikipedia]("https://en.wikipedia.org/wiki/Complex_number")</cite>

In this project, user inputs the operators and chooses the operation between addition, subtraction, multiplication, and division. The page uses a WebAssembly module to calculate the operation and Typescript transpiled code to format and display the result to the user.

The page uses Bootstrap Dark 5 for styling and Mathjax library to convert the result to svg format.
To build this project, clone this repository and run these commands:

```sh
npm install
npm run build
```
