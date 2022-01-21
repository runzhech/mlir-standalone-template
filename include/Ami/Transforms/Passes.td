#ifndef AMI_PASSES
#define AMI_PASSES

// include "Ami/IR/AmiOps.td"
include "mlir/Pass/PassBase.td"


def AmiCombineTranspose : FunctionPass<"ami-combine-transpose">
{
    let summary = "combing two continuous transpose";

    let constructor = "mlir::createAmiCombineTransposePass()";
    let dependentDialects = [];
}




#endif //AMI_PASSES