cmake -S . -B build \
    -DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX% \
    -DCMAKE_PREFIX_PATH=%LIBRARY_PREFIX% \
    -DCPPTOML_BUILD_EXAMPLES=OFF \
    %CMAKE_ARGS%
cmake --build build
cmake --install build
