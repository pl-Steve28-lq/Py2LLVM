@echo off
py PyLL.py
clang -O3 -S -emit-llvm comp.c -o comp.ll
clang generated.ll comp.ll -o output.exe
echo:
output
pause