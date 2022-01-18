

#include "Ami/AmiDialect.h"
#include "Ami/AmiOps.h"


using namespace mlir;
using namespace mlir::ami;


/* Ami Dialect */

void AmiDialect::initialize()
{
    addOperations<
    #define GET_OP_LIST
    #include "Ami/AmiOps.cpp.inc"
    >();
}