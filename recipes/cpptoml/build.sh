#!/bin/sh

cmake -S . -B build \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DCMAKE_PREFIX_PATH="${PREFIX}" \
    -DCPPTOML_BUILD_EXAMPLES=OFF \
    $CMAKE_ARGS
cmake --build build
cmake --install build
