cmake_minimum_required(VERSION 3.10)
project(mlir-toy)

# 查找 LLVM 和 MLIR 安装路径
find_package(LLVM REQUIRED CONFIG)
find_package(MLIR REQUIRED CONFIG)

# 设置 C++ 标准和启用 RTTI
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 添加 -fno-rtti 选项到 LLVM 的编译选项中
set(LLVM_COMPILE_FLAGS "-fno-rtti")
add_definitions(${LLVM_COMPILE_FLAGS})

# 使用 LLVM 和 MLIR 的 cmake 模块
list(APPEND CMAKE_MODULE_PATH "${LLVM_CMAKE_DIR}")
list(APPEND CMAKE_MODULE_PATH "${MLIR_CMAKE_DIR}")

# 包含头文件目录
include_directories(${LLVM_INCLUDE_DIRS})
include_directories(${MLIR_INCLUDE_DIRS})
include_directories(include/)

# 添加 LLVM 和 MLIR 定义
add_definitions(${LLVM_DEFINITIONS})
add_definitions(${MLIR_DEFINITIONS})

# 添加可执行文件
add_executable(toy
  toyc.cpp
  parser/AST.cpp
)

# 链接库
target_link_libraries(toy
  PRIVATE
    MLIRSupport
)