#include "Ami/IR/AmiOps.h"
#include "Ami/IR/AmiDialect.h"

#include "mlir/IR/OpImplementation.h"



using namespace mlir;
using namespace mlir::ami;

static mlir::LogicalResult verify(ConstantOp op)
{
    printf("calling a verify function for constant op");
    return mlir::success();
}

static mlir::LogicalResult verify(TransposeOp op)
{
    printf("calling a verify function for transpose op");
    return mlir::success();
}

#define GET_OP_CLASSES
#include "Ami/IR/AmiOps.cpp.inc"
