#!/usr/bin/env bash
set -x # echo on
datasets=( artificial mushroom plants nltcs msnbc abalone adult wine car yeast numom2b )
for name in "${datasets[@]}"
do
    time python exspn.py models/precomputed/${name}.joblib $name explanations/precomputed/${name}.joblib --precomputed-instance-function > timelogs.txt
done

#for name in "${datasets[@]}"
#do
#    python exspn.py models/not-precomputed/${name}.joblib $name explanations/not-precomputed/${name}.joblib
#done
