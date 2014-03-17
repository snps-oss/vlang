#!/bin/bash

git submodule update --init

if [ ! -e $(pwd)/llvm/tools/clang ]; then
    ln -s $(pwd)/clang $(pwd)/llvm/tools/clang
fi

if [ ! -e $(pwd)/llvm/tools/vlang ]; then
    ln -s $(pwd)/vlang $(pwd)/llvm/tools/vlang
fi

mkdir tmp_build_for_indexing
cd tmp_build_for_indexing
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=TRUE ../llvm
mv compile_commands.json ../llvm
cd ..
rm -rf tmp_build_for_indexing
