add_mlir_dialect_library(
    AmiDialect.cpp
    AmiOps.cpp

    ADDITIONAL_HEADER_DIRS
    ${PROJECT_SOURCE_DIR}/include/Ami

    DEPENDS
    MLIRAmiIncGen

    LINK_LIBS PUBLIC
    MLIRIR
)