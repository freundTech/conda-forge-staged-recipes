#/bin/sh

set -ex

export OPENSSL_ROOT="$PREFIX"
export OPENSSL_ROOT_DIR="$PREFIX"

echo =======================
echo ARGS: $CMAKE_ARGS
echo Prefix: $PREFIX
echo Openssl: $OPENSSL_ROOT_DIR
echo =======================


cmake -G Ninja -S fizz -B build \
    -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
    -DCMAKE_PREFIX_PATH="${PREFIX}" \
    -DOPENSSL_ROOT_DIR="${PREFIX}" \
    -DBUILD_EXAMPLES=OFF \
    -DBUILD_TESTS=OFF \
    -DBUILD_SHARED_LIBS=ON \
    $CMAKE_ARGS
cmake --build build
cmake --install build
