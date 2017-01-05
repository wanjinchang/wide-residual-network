#!/bin/bash
export netType='wide-resnet'
export dataset='cifar10'
export save=logs/${dataset}/${netType}-ensemble
export experiment_number=1
mkdir -p $save

th ensemble.lua \
    -dataset ${dataset} \
    -netType ${netType} \
    -batchSize 16 \
    -dropout 0 \
    | tee $save/log_ensemble_${experiment_number}.txt
