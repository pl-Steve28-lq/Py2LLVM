# Py2LLVM
Convert Python (Subset) to LLVM IR

## Restriction of Pyll
- You can only use `int` type for variables. <br>
- You can't use basic functions such as `int`, `range`, `str`. `print` is implemented. <br>
- You can only make functions have type `(None) -> int` and `(int, int, ...) -> int`
- You can't use `AugAssign (+=, -=, ...)`, `pow`, `div` operator and bitwise operator except `and` and `or`

## Sample Code
[Calculate prime under 1000](./code.pyll)
