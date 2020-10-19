cmake_minimum_required(VERSION 3.10)

#project name
project(hellomake VERSION 1.0)

#set c++ standard
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

#create exec
add_executable(hellomake src/hellomake.c)

#include relevant dirs
include_directories(hellomake PUBLIC
	include
	src
	)


