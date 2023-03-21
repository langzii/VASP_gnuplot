for i in T*
do echo ${i} !!!!!!!!!!!!!!!!! 
    cd ${i}
    awk '/length of vectors/{getline;print}' OUTCAR >latticeConstants
    awk  '{print $1,$2,$3}' latticeConstants >test
    awk '{sum+=$1} END {print "NR=%d,a=Average=%f\n",NR,sum/NR}' test
    awk '{sum+=$2} END {print "NR=%d,b=Average=%f\n",NR,sum/NR}' test
    awk '{sum+=$3} END {print "NR=%d,c=Average=%f\n",NR,sum/NR}' test
    cd ..
done    