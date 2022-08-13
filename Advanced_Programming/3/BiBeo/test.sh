#!/bin/bash
DIR="testdata"
declare -i TOTAL_SCORE=0
for i in $(seq 0 1 10)
do
    INPUT="sample-input-$(printf %02d $i).txt"
    OUT="sample-output-$(printf %02d $i).txt"
    ./main < $DIR/$INPUT > output.txt
    echo "TEST $i"
    echo "./main < $DIR/$INPUT > output.txt"
    echo "diff output.txt $DIR/$OUT"
    if diff output.txt $DIR/$OUT 
    then
        echo "Accepted!\n"
        TOTAL_SCORE=$((TOTAL_SCORE+1))
    else
        echo "Wrong answer!\n"
    fi

done

echo "Total score: $TOTAL_SCORE\n"
