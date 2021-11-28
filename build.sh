rm -rf build
mkdir build
cd build
CC=/opt/homebrew/bin/gcc-11 CXX=/opt/homebrew/bin/g++-11 cmake ..
make -j 4
./raytracing1 > image.ppm