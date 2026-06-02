cmake_minimum_required(VERSION 4.3)

project (fizz_test VERSION 1.0)

find_package (fizz REQUIRED)

add_executable (fizz_test fizz_test.cpp)
target_link_libraries (fizz_test fizz:fizz)
