/**
  This script imports the functions cadd, csub, cmul, and cdiv from a WebAssembly module. Each function takes four
    parameters: x_real, x_imag, y_real, and y_imag, which are the real and imaginary parts of two complex numbers.
    The functions return a pointer to an array of size 2 containing the real and imaginary parts of the result.
  The module also exports a function named formatComplex that takes the real and imaginary parts of a complex number
    as input and returns a string with a formatted representation of the complex number.
  The script initializes the UI elements and event listeners. When the user submits the form, the script calls the
    appropriate function based on the selected operation and displays the result on the page.
 */

import "./main.css";

type cnumFunction = (
  x_real: number,
  x_imag: number,
  y_real: number,
  y_imag: number
) => number;

interface ProgramWasm {
  memory: WebAssembly.Memory;
  cadd: cnumFunction;
  csub: cnumFunction;
  cmul: cnumFunction;
  cdiv: cnumFunction;
}

declare const MathJax: any;

/**
  Formats a complex number with the given real and imaginary parts as a string.
  @param creal - The real part of the complex number.
  @param cimag - The imaginary part of the complex number.
  @return - The formatted string representation of the complex number.
*/

function formatComplex(creal: number, cimag: number): string {
  const formatNum = (n: number) => n.toFixed(6).replace(/\.?0+$/, ""),
    Real = formatNum(creal),
    Imag = cimag === 1 ? "" : cimag == -1 ? "-" : formatNum(cimag);
  if (creal === 0) {
    return cimag === 0 ? "0" : `${Imag}i`;
  } else {
    if (cimag === 0) return `${Real}`;
    else if (cimag > 0) return `${Real} + ${Imag}i`;
    else return `${Real} ${Imag}i`;
  }
}

/**
  Initializes the UI elements and event listeners. When the user submits the form, the appropriate
  function based on the selected operation is called and the result is displayed on the page.
*/

async function main(): Promise<void> {
  const Form = document.querySelector("#operands-form") as HTMLFormElement,
    Inputs = Array.from(
      document.querySelectorAll(".operand-input")
    ) as HTMLInputElement[],
    OpSelect = document.querySelector("#opcode") as HTMLSelectElement,
    OutputEl = document.querySelector("#output-data") as HTMLOutputElement;

  try {
    const WasmModule = await WebAssembly.instantiateStreaming(
        await fetch("assets/program.wasm")
      ),
      { memory, cadd, csub, cmul, cdiv }: ProgramWasm = WasmModule.instance
        .exports as any,
      getArr = (byteOffset: number): [number, number] => {
        const FloatArr = new Float64Array(memory.buffer, byteOffset, 2),
          Arr = Array.from<number>(FloatArr) as [number, number];
        return Arr;
      };

    Inputs.forEach((el, i, arr) => {
      el.addEventListener("keydown", (e) => {
        const nextEl = arr[i + 1];
        if (e.key === "Enter" && nextEl) {
          e.preventDefault();
          nextEl.value = "";
          nextEl.focus();
        }
      });
    });

    Form.addEventListener("submit", (e) => {
      e.preventDefault();
      try {
        OutputEl.innerHTML = "";
        const Operands = Inputs.map((el) => parseFloat(el.value)) as [
            number,
            number,
            number,
            number
          ],
          OPCODE = OpSelect.value;
        let result: number;
        switch (OPCODE) {
          case "add":
            result = cadd(...Operands);
            break;
          case "sub":
            result = csub(...Operands);
            break;
          case "mul":
            result = cmul(...Operands);
            break;
          case "div":
            result = cdiv(...Operands);
            break;
          default:
            throw "Invalid option";
        }
        const ResultArr = getArr(result),
          RESULT_STR: string = formatComplex(...ResultArr),
          Svg: HTMLElement = MathJax.tex2svg(RESULT_STR);
        OutputEl.appendChild(Svg);
      } catch (err) {
        OutputEl.textContent = err instanceof Error ? err.message : String(err);
      }
    });
  } catch (err) {
    OutputEl.textContent = err instanceof Error ? err.message : String(err);
  }
}

window.addEventListener("load", main);
