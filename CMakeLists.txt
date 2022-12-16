cmake_minimum_required(VERSION 3.0.0)
project(CPPIBE)

add_definitions("-g -Wall -O2")
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_BUILD_TYPE "Debug")

set(IBE_H ${PROJECT_SOURCE_DIR}/include)
include_directories(${IBE_H})

aux_source_directory(${PROJECT_SOURCE_DIR}/src IBE_CXXFILES)
aux_source_directory(${PROJECT_SOURCE_DIR}/benchmark/ TEST_CXXFILES)
set(SRCS ${TEST_CXXFILES} ${IBE_CXXFILES})

link_libraries(m)
link_libraries(gmp)
link_libraries(pbc)

add_executable(${PROJECT_NAME} ${SRCS})

target_link_libraries(${PROJECT_NAME} pthread)

set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
