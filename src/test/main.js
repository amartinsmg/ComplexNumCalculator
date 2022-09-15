const { ok: assert } = require("assert"),
  { readFileSync } = require("fs");

function arraysCmp(arr1, arr2) {
  const str1 = JSON.stringify(arr1),
    str2 = JSON.stringify(arr2);
  return str1 == str2;
}

void (async function () {
  const WasmBuffer = readFileSync(
      __dirname + "/../../build/assets/program.wasm"
    ),
    WasmModule = await WebAssembly.instantiate(WasmBuffer),
    { cadd, csub, cmul, cdiv, memory } = WasmModule.instance.exports,
    getArray = (byteOffset) => {
      const F64Arr = new Float64Array(memory.buffer, byteOffset, 2),
        Arr = Array.from(F64Arr);
      return Arr;
    };

  assert(arraysCmp(getArray(cadd(2, 3, 5, -1)), [7, 2]));
  assert(arraysCmp(getArray(csub(2, 3, 5, -1)), [-3, 4]));
  assert(arraysCmp(getArray(cmul(2, 3, 5, -1)), [13, 13]));
  assert(arraysCmp(getArray(cdiv(2, 3, 5, -1)), [7 / 26, 17 / 26]));
  console.log("Passed all tests successfully");
})();
