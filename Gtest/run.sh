#!/bin/bash
rm -rf build 
cmake -B build
cd build 
make -j4

