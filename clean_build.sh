#!/bin/bash
cd /home/test/runzhe/mlir-standalone-template/build
rm -rf /home/test/runzhe/mlir-standalone-template/build/*
cmake -G Ninja .. -DMLIR_DIR=/home/test/runzhe/MonoVM/build/lib/cmake/mlir -DLLVM_EXTERNAL_LIT=/home/test/runzhe/MonoVM/build/bin/llvm-lit
cmake --build . --target check-standalone-opt