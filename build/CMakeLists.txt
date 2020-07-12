cmake_minimum_required(VERSION 3.13.4)
set(CMAKE_CXX_STANDARD 17)

set( CMAKE_BUILD_TYPE Debug )
set( CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17" )

project( MStream_server )

include_directories( ../include/ )

add_executable(
    ${PROJECT_NAME}
    ../main.cpp
    ../source/Server.cpp
)

target_link_libraries( ${PROJECT_NAME} )