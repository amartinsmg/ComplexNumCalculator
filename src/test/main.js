const { ok: assert } = require("assert"),
  { readFileSync } = require("fs");

/**
  Compares two arrays. It converts each array to a JSON string and compares the strings for equality, since comparing arrays directly in JavaScript can be unreliable.
    @param arr1 - The first array to compare.
    @param arr2 - The second array to compare.
    @return - true if the arrays are equal, false otherwise.
 */

function arraysCmp(arr1, arr2) {
  const str1 = JSON.stringify(arr1),
    str2 = JSON.stringify(arr2);
  return str1 == str2;
}

/**
  This code imports four functions: cadd, csub, cmul, and cdiv. It reads a WebAssembly binary file containing these functions and their implementation
    from the file system, instantiates the module, and runs some tests to assert that the functions produce expected results. The arraysCmp function is
    used to compare the expected output with the actual output of the functions.
  The tests pass if all four assertions succeed. If any of the assertions fail, an error will be thrown.
  Finally, a success message is logged to the console.
 */

void (async function () {
  const WasmBuffer = readFileSync(
      __dirname + "/../../dist/assets/program.wasm"
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
