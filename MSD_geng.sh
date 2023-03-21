for i in T*
do echo ${i} !!!!!!!!!!!!!!!!! 
    cd ${i}
    #sed -i '6d' POSCAR
    cp /home/wd/Desktop/temp/a.out .
    ./a.out POSCAR XDATCAR
    cd ..
done    