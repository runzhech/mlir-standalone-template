add_mlir_dialect_library(MLIRAmiTransforms

    ADDITIONAL_HEADER_DIRS
    ${PROJECT_SOURCE_DIR}/include/Ami/Transforms

    DEPENDS
    MLIRAmiTransformsIncGen

    LINK_LIBS PUBLIC
    MLIRIR
    MLIRAmi

)