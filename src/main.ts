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

async function main() {
  const WasmInstance = await WebAssembly.instantiateStreaming(
      await fetch("assets/program.wasm")
    ),
    { memory, cadd, csub, cmul, cdiv }: ProgramWasm = WasmInstance.instance
      .exports as any,
    getArr = (byteOffset: number): number[] => {
      const FloatArr = new Float64Array(memory.buffer, byteOffset, 2),
        //@ts-ignore
        Arr = Array.from<number>(FloatArr);
      return Arr;
    };

  // let x: number[] = getArr(cadd(2, 3, 5, -1));
  // console.log(x);
  // x = getArr(csub(2, 3, 5, -1));
  // console.log(x);
  // x = getArr(cmul(2, 3, 5, -1));
  // console.log(x);
  // x = getArr(cdiv(2, 3, 5, -1));
  // console.log(x);
}

main();
