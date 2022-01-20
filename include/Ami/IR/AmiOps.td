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

    let arguments = (ins 
        I32Tensor:$input
    );
    let results = (outs I32Tensor:$output);


    let assemblyFormat = "$input attr-dict `:`  type(results) type($input)";

    let printer = [{ return ::print(p, *this);}];

    let builders = [
        OpBuilder<(ins "int":$value)>
    ];
    let verifier = [{ return ::verify(*this);}];


}



def PrintOp : Ami_Op<"print">
{

    let summary = "Print Operation";
    let description = [{
        This operation prints a given input tensor, and produces no result;
    }];

    let arguments = (ins I32Tensor:$value);

    let assemblyFormat = "$value attr-dict `:` type($value)";
}



#endif //AMI_OPS