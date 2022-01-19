

#include "Ami/IR/AmiDialect.h"
#include "Ami/IR/AmiOps.h"


using namespace mlir;
using namespace mlir::ami;


/* Ami Dialect */

void AmiDialect::initialize()
{
    addOperations<
    #define GET_OP_LIST
    #include "Ami/IR/AmiOps.cpp.inc"
    >();
}