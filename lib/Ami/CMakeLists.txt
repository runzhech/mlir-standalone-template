add_mlir_dialect_library(MLIRAmi
    AmiDialect.cpp
    AmiOps.cpp

    ADDITIONAL_HEADER_DIRS
    ${PROJECT_SOURCE_DIR}/include/Ami

    DEPENDS
    MLIRAmiOpsIncGen

    LINK_LIBS PUBLIC
    MLIRIR
)