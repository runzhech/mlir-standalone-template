#include "Ami/IR/AmiOps.h"
#include "Ami/IR/AmiDialect.h"

#include "mlir/IR/OpImplementation.h"



using namespace mlir;
using namespace mlir::ami;

static mlir::LogicalResult verify(ConstantOp op)
{
    printf("calling a verify function");
    return mlir::success();
}


#define GET_OP_CLASSES
#include "Ami/IR/AmiOps.cpp.inc"
