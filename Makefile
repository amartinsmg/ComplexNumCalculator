all: compile

# Create directories debug and intermediate if there are no they

dir: 
	([ -d debug ] || mkdir debug ) && ([ -d dist ] || mkdir dist ) && ([ -d dist/assets ] || mkdir dist/assets )

# Compile C source code to bynary code in WebAssembly format

compile: dir
	emcc -sWASM=1 -sEXPORTED_RUNTIME_METHODS='["cwrap"]' -sEXPORTED_FUNCTIONS=_cadd,_csub,_cmul,_cdiv \
	-Wl,--no-entry -o dist/assets/program.wasm src/program.c

# Generate WebAssembly text format for debugging

wat: compile
	npx wasm2wat -o debug/program.wat dist/assets/program.wasm

# Generate debug files

debug: wat
	echo program.wat generated successfully
