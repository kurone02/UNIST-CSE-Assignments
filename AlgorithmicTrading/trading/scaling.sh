#!/usr/bin/bash

echo "Running scaling law of reinforcement learning..."
for (( year=2020; year >= 2010; year-- ));
do
    echo "Processing $year..."
    python scaling.py $year 2021 > log.txt
done
echo "Done! Check scaling.txt"