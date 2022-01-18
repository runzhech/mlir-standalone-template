#ifndef AMI_OPS
#define AMI_OPS


include "AmiDialect.td"
include "mlir/Interfaces/InferTypeOpInterface.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

def Ami_ConstantOp : Ami_Op<"constant", [NoSideEffect]>{
    let summary = "A constant op";
    let description = [{
        ami.constant takes an integer and returns an same integer.
    }];

    let arguments = (ins I32:$input);
    let results = (outs I32:$res);

    let assemblyFormat = [{
        $input attr-dict `:` type($input)
    }];

}

#endif //AMI_OPS