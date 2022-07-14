all: wat
	echo program.wat generated successfully

# Create directories debug and intermediate if there are no they

dir: 
	[ -d debug ] || mkdir debug && [ -d intermediate ] || mkdir intermediate

# Compile C source code to bynary code in WebAssembly format

compile: dir
	emcc -sWASM=1 -sEXPORTED_RUNTIME_METHODS='["cwrap"]' -sEXPORTED_FUNCTIONS=_cadd,_csub,_cmul,_cdiv \
	-Wl,--no-entry -o debug/program.wasm src/program.c

# Generate WebAssembly text format

wat: compile
	npx wasm2wat -o intermediate/program.wat debug/program.wasm

# Convert WebAssembly text format to birary code

wasm: wat
	bash compile.sh

# Run test file

test: wasm
	node test/test.js
