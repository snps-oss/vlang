#!/bin/bash

git submodule update --init

if [ ! -e $(pwd)/llvm/tools/clang ]; then
    ln -s $(pwd)/clang $(pwd)/llvm/tools/clang
fi

if [ ! -e $(pwd)/llvm/tools/vlang ]; then
    ln -s $(pwd)/vlang $(pwd)/llvm/tools/vlang
fi
