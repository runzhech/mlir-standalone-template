

#include "Ami/IR/AmiDialect.h"
#include "Ami/IR/AmiOps.h"


#include "mlir/IR/Builders.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/OpImplementation.h"

using namespace mlir;
using namespace mlir::ami;


// #include "Ami/IR/AmiOpsDialect.cpp.inc"
/* Ami Dialect */

void AmiDialect::initialize()
{
    addOperations<
#define GET_OP_LIST
#include "Ami/IR/AmiOps.cpp.inc"
    >();
}




// #define GET_OP_CLASSES
// #include "Ami/IR/AmiOps.cpp.inc"
