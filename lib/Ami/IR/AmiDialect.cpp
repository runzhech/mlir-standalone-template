

#include "Ami/IR/AmiDialect.h"
#include "Ami/IR/AmiOps.h"


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


// static mlir::LogicalResult verify(ConstantOp op)
// {    
//     return mlir::success();
// }


