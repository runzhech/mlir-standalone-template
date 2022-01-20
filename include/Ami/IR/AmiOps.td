#ifndef AMI_OPS
#define AMI_OPS


include "AmiDialect.td"
include "mlir/IR/OpBase.td"
include "mlir/Interfaces/InferTypeOpInterface.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

def ConstantOp : Ami_Op<"constant", [NoSideEffect, SameOperandsAndResultType]>{
    let summary = "A constant op";
    let description = [{
        ami.constant takes an integer and returns an same integer.
    }];

    let arguments = (ins I32:$input);
    let results = (outs I32:$res);

    let assemblyFormat = [{
        $input attr-dict `:` type($input)
    }];

    let printer = [{ return ::print(p, *this);}];

    let builders = [
        OpBuilder<(ins "int":$value)>
    ];
    let verifier = [{ return ::verify(*this);}];


}

#endif //AMI_OPS