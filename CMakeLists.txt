
# set the project name
project(raytracing1)
set(CMAKE_CXX_STANDARD 17)

set(CMAKE_CXX_FLAGS "-Wall -Wextra")
set(CMAKE_CXX_FLAGS_DEBUG "-g")
set(CMAKE_CXX_FLAGS_RELEASE "-O2")

find_package(OpenMP)


# set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fopenmp")



# add the executable
add_executable(raytracing1 src/main.cc)
if(OpenMP_CXX_FOUND)
    target_link_libraries(raytracing1 PUBLIC OpenMP::OpenMP_CXX)
endif()


