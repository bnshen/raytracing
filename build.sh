rm -rf build
mkdir build
cd build
cmake ..
make -j 4
./raytracing1 > image.ppm