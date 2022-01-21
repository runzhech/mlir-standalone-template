set(LLVM_TARGET_DEFINITIONS Passes.td)
mlir_tablegen(Pass.h.inc -gen-pass-decls -name Ami)
add_public_tablegen_target(MLIRAmiTransformsIncGen)

add_mlir_doc(Passes AmiPasses ./ -gen-pass-doc)