#!/bin/bash 

NJOBS=3 ; export NJOBS

function mytask () {
echo sleeping for $1
 sleep $1
}

for i in $( cat test.txt )
do
    while [  $(jobs | wc -l ) -ge $NJOBS ]
        do 
            sleep 3
        done
    echo executing task for $i
    mytask $i &
done

echo waiting for $( jobs | wc -l ) jobs to complete
wait