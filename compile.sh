#!/bin/bash

# Create directories build and build/assets if there are no they

([ -d build ] || mkdir build) && ([ -d build/assets ] || mkdir build/assets)


# Convert WebAssembly text format to birary code

npx wat2wasm -o build/assets/program.wasm intermediate/program.wat
