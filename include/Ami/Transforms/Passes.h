#ifndef AMI_TRANSFORMS_PASS_H
#define AMI_TRANSFORMS_PASS_H

#include "mlir/Pass/Pass.h"


namespace mlir
{




namespace ami
{
#define GEN_PASS_REGISTRATION
#include "Ami/Transforms/Passes.h.inc"
}


}

#endif // AMI_TRANSFORMS_PASS_H