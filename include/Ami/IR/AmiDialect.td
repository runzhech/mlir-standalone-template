

#ifndef AMI_DIALECT
#define AMI_DIALECT

include "mlir/IR/OpBase.td"




/* Ami Dialect definition */

def Ami_Dialect : Dialect
{
    let name = "ami";
    let summary = "An MLIR customed Dialect";

    let description = [{
        An attempt to add a Dialect called AMI
    }];

    let cppNamespace = "::mlir::ami";
}


/* Ami OP base class */

class Ami_Op<string mnemonic, list<OpTrait> traits = []> :
    Op<Ami_Dialect, mnemonic, traits>;

#endif //AMI_DIALECT