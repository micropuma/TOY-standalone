#!/bin/bash

mlir-tblgen -gen-dialect-doc Ops.td -I ${mlir_src_root}/include/ > ../../test/1.cpp
