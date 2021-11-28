echo "Bash version ${BASH_VERSION}..."
./build.sh

exp_sample(){
    i=$1
    echo "width_1200_sample_${i}_depth_10_openmp"
    ./build/raytracing1.exe 1200 $i 10 > "width_1200_sample_${i}_depth_10_openmp.ppm"
}


exp_depth(){
    i=$1
    echo "width_1200_sample_10_depth_${i}_openmp"
    ./build/raytracing1.exe 1200 10 $i > "width_1200_sample_10_depth_${i}_openmp.ppm"
}

exp_width(){
    i=$1
    echo "width_${i}_sample_10_depth_10_openmp"
    ./build/raytracing1.exe $i 10 10 > "width_${i}_sample_10_depth_10_openmp.ppm"
}
 

for i in {10..100..10}
do 
    { time  exp_sample $i  ; } 2> "time_width_1200_sample_${i}_depth_10_openmp.txt"
done


for i in {10..100..10}
do 
    { time  exp_sample $i  ; } 2> "time_width_1200_sample_10_depth_${i}_openmp.txt"
done

for i in {200..1200..100}
do 
    { time  exp_sample $i  ; } 2> "time_width_${i}_sample_10_depth_10_openmp.txt"
done

