#ifndef TOY_OPS
#define TOY_OPS

include "mlir/IR/OpBase.td"
include "mlir/Interfaces/FunctionInterfaces.td"
include "mlir/IR/SymbolInterfaces.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

// define a toy dialect
def Toy_Dialect : Dialect {
   let name = "toy";
   let cppNamespace = "::mlir::toy"; 
}

#endif // TOY_OPS