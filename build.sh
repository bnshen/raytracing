rm -rf build
mkdir build
cd build
CC=gcc CXX=g++ cmake .. -G "MinGW Makefiles"
mingw32-make