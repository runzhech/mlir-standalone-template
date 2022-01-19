#!/bin/bash
cd /home/rainjoe/mlir-standalone-template/build
rm -rf /home/rainjoe/mlir-standalone-template/build/*
cmake -G Ninja .. -DMLIR_DIR=/home/rainjoe/llvm-project/build/lib/cmake/mlir -DLLVM_EXTERNAL_LIT=/home/rainjoe/llvm-project/build/bin/llvm-lit
cmake --build . 