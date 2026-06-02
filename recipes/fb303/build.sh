#/bin/sh

cmake -G Ninja -S . -B build \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DCMAKE_PREFIX_PATH="${PREFIX}" \
    -DBUILD_TESTS=OFF \
    -DBUILD_SHARED_LIBS=ON \
    -DPYTHON_EXTENSIONS=OFF \
    $CMAKE_ARGS
cmake --build build
cmake --install build
