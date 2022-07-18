all: compile
	echo program.wasm generated successfully

# Create directories debug and intermediate if there are no they

dir: 
	([ -d debug ] || mkdir debug) && ([ -d build ] || mkdir build) && ([ -d build/assets ] || mkdir build/assets)


# Compile C source code to bynary code in WebAssembly format

compile: dir
	emcc -sWASM=1 -sEXPORTED_RUNTIME_METHODS='["cwrap"]' -sEXPORTED_FUNCTIONS=_cadd,_csub,_cmul,_cdiv \
	-Wl,--no-entry -o build/assets/program.wasm src/program.c

# Generate WebAssembly text format for debugging

wat: compile
	npx wasm2wat -o debug/program.wat build/assets/program.wasm

# Generate debug files

debug: wat
	echo program.wat generated successfully

# Run test file

test: compile
	node test/test.js
