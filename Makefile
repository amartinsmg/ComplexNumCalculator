# Usage
# This Makefile provides an easy way to compile C code to WebAssembly format using the emcc compiler. To use it, simply run make followed by the target you want to build.

# Commands
# make all: compiles the C source code to binary code in WebAssembly format.
# make dir: creates the directories debug and dist if they do not exist yet.
# make compile: compiles the C source code to binary code in WebAssembly format, exporting the functions cadd, csub, cmul, and cdiv.
# make wat: generates the WebAssembly text format for debugging purposes.

all: compile

dir: 
	([ -d debug ] || mkdir debug ) && ([ -d dist ] || mkdir dist ) && ([ -d dist/assets ] || mkdir dist/assets )

compile: dir
	emcc -sWASM=1 -sEXPORTED_RUNTIME_METHODS='["cwrap"]' -sEXPORTED_FUNCTIONS=_cadd,_csub,_cmul,_cdiv \
	-Wl,--no-entry -o dist/assets/program.wasm src/program.c

wat: compile
	npx wasm2wat -o debug/program.wat dist/assets/program.wasm
