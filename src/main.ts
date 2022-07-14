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

// This function formats the numeric result returned by the module to a complex number form.

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

// This function is called when the page is loaded and is responsible for loading
// and instantiating the wasm module and calling its functions when the form is submitted.

async function main(): Promise<void> {
  const WasmInstance = await WebAssembly.instantiateStreaming(
      await fetch("assets/program.wasm")
    ),
    Form = document.querySelector("#operands-form") as HTMLFormElement,
    //@ts-ignore
    Inputs = Array.from(
      document.querySelectorAll(".operand-input")
    ) as HTMLInputElement[],
    OpSelect = document.querySelector("#opcode") as HTMLSelectElement,
    OutputEl = document.querySelector("#output-data") as HTMLOutputElement,
    { memory, cadd, csub, cmul, cdiv }: ProgramWasm = WasmInstance.instance
      .exports as any,
    getArr = (byteOffset: number): [number, number] => {
      const FloatArr = new Float64Array(memory.buffer, byteOffset, 2),
        //@ts-ignore
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
  });
}

window.onload = main;
