echo "Bash version ${BASH_VERSION}..."
./build.sh

exp_sample(){
    i=$1
    echo "width_1200_sample_${i}_depth_10"
    ./build/raytracing1.exe 1200 $i 10 > "width_1200_sample_${i}_depth_10.ppm"
}
 

for i in {10..100..10}
do 
    { time  exp_sample $i  ; } 2> "time_width_1200_sample_${i}_depth_10.txt"
done

