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
        F64Tensor:$input
    );
    let results = (outs F64Tensor:$output);


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

    let arguments = (ins F64Tensor:$value);

    let assemblyFormat = "$value attr-dict `:` type($value)";
}

def AddOp : Ami_Op<"add">
{
    let summary = "Add two tensor";
    let description = [{An operation to add two Tensor;}];

    let arguments = (ins 
        F64Tensor:$input1,
        F64Tensor:$input2
    );

    let results = (outs
        F64Tensor:$output
    );

    let builders = [
        OpBuilder<(ins "Value":$input1, "Value":$input2)>
    ];
}


def TransposeOp : Ami_Op<"transpose">
{
    let summary = "transpose operation";

    let description = [{
        transpose an tensor
    }];

    let arguments = (ins
        F64Tensor:$input
    );
    let results = (outs
        F64Tensor:$output
    );

    let hasCanonicalizer = 1;

    let assemblyFormat = [{
        `(` $input `:` type($input) `)` attr-dict `to` type(results)
    }];
    let builders = [
        OpBuilder<(ins "Value":$input)>
    ];
    let verifier = [{return ::verify(*this);}];
}


#endif //AMI_OPS