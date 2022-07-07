

compile:
	emcc -sWASM=1 -sEXPORTED_RUNTIME_METHODS='["cwrap"]' -sEXPORTED_FUNCTIONS=_cadd,_csub,_cmul,_cdiv -Wl,--no-entry -o build/program.wasm src/program.c

wat: compile
	npx wasm2wat -o debug/program.wat build/program.wasm

test: wat
	node test/test.js
