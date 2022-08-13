#!/bin/bash
DIR="testdata"
declare -i TOTAL_SCORE=0
for i in $(seq 0 1 10)
do
    INPUT="sample-input-$(printf %02d $i).txt"
    OUT="sample-output-$(printf %02d $i).txt"
    ./gail < $DIR/$INPUT > output.txt
    echo "TEST $i"
    echo "./gail < $DIR/$INPUT > output.txt"
    echo "./check $DIR/$INPUT  output.txt"
    if ./check $DIR/$INPUT  output.txt
    then
        echo "Accepted!\n"
        TOTAL_SCORE=$((TOTAL_SCORE+1))
    else
        echo "Wrong answer!\n"
    fi

done

echo "Total score: $TOTAL_SCORE\n"
