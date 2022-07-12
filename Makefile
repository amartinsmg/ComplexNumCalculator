all: wat
	echo program.wat generated successfully

dir: 
	[ -d debug ] || mkdir debug && [ -d intermediate ] || mkdir intermediate

compile: dir
	emcc -sWASM=1 -sEXPORTED_RUNTIME_METHODS='["cwrap"]' -sEXPORTED_FUNCTIONS=_cadd,_csub,_cmul,_cdiv \
	-Wl,--no-entry -o debug/program.wasm src/program.c

wat: compile
	npx wasm2wat -o intermediate/program.wat debug/program.wasm

wasm: wat
	bash compile.sh

test: wasm
	node test/test.js
