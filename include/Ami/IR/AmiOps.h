#ifndef AMI_AMIOPS_H
#define AMI_AMIOPS_H

#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/Dialect.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"


#define GET_OP_CLASSES
#include "Ami/IR/AmiOps.h.inc"

#endif // AMI_AMIOPS_H