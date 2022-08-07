#***********************************************
#
#      Filename: CMakeLists.txt
#
#        Author: CGOULD - christian.d.gould@gmail.com
#   Description: ---
#        Create: 2022-06-24 19:44:51
# Last Modified: 2022-06-24 19:44:51
#***********************************************
cmake_minimum_required(VERSION 2.8.12)
project(example)

message("[ INFO ]: ADDING EIGEN")
add_subdirectory(extern/eigen)
add_subdirectory(extern/pybind11)
find_package(Eigen3 REQUIRED)
include_directories( 
    include
    ${EIGEN3_INCLUDE_DIRS}
)
message("[ INFO ]: ADDING PYBIND11")
pybind11_add_module(example ${PROJECT_SOURCE_DIR}/src/example.cpp)
target_link_libraries(example PUBLIC pthread m Eigen3::Eigen)

