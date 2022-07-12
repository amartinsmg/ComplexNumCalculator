import "./style.css";

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

function formatComplex(creal: number, cimag: number): string {
  if (creal === 0) {
    return cimag === 0 ? "0" : `${cimag}i`;
  } else {
    if (cimag === 0) return `${creal}`;
    else if (cimag > 0) return `${creal} + ${cimag}i`;
    else return `${creal} ${cimag}i`;
  }
}

async function main(): Promise<void> {
  const WasmInstance = await WebAssembly.instantiateStreaming(
      await fetch("assets/program.wasm")
    ),
    Form = document.querySelector("#operands-form") as HTMLFormElement,
    //@ts-ignore
    Inputs = Array.from(
      document.querySelectorAll(".operand-input")
    ) as HTMLInputElement[],
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
    const Data = new FormData(Form),
      Operands = Inputs.map((el) => parseFloat(el.value)) as [
        number,
        number,
        number,
        number
      ],
      OPCODE = (Data.get("operation") as FormDataEntryValue).toString();
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
