
#include "Ami/IR/AmiOps.h"
#include "Ami/Transforms/Passes.h"


#include "mlir/Transforms/DialectConversion.h"


using namespace mlir;

namespace{

struct CombineTransposeOp : public OpConversionPattern<Ami::TransposeOp>
{
    using OpConversionPattern::OpConversionPattern;
    LogicalResult matchAndRewrite()

};

struct AmiCombineTransposePass : public AmiCombineTransposeBase<AmiCombineTransposePass>
{

    void runOnFunction override 
    {
        
    }
} 



} //namespace mlir

std::unique_ptr<Pass> mlir::createAmiPass()
{
    return std::make_unique<>();
}
