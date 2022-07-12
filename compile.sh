#!/bin/bash

([ -d build ] || mkdir build) && ([ -d build/assets ] || mkdir build/assets)

npx wat2wasm -o build/assets/program.wasm intermediate/program.wat
