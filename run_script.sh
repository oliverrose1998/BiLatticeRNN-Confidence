#!/bin/bash
#$ -S /bin/bash

export PATH

source /home/babel/BABEL_OP3_404/releaseB/exp-graphemic-obr22/MLenv/bin/activate

# OMP_NUM_THREADS=1 python main.py --batchSize 32 --nEpochs 40 --LR 0.05 --shuffle --LRDecay newbob --dataset dev-grapheme-lat --target target_overlap_0.1 --arc_combine-method attention --lattice-type word --suffix allarcs_40_reproduce --clip 10 --rootDir ../scripts/data/

OMP_NUM_THREADS=1 python main.py --batchSize 32 --nEpochs 40 --LR 0.05 --shuffle --LRDecay newbob --dataset dev-grapheme-lat --target target_overlap_0.1 --arc_combine-method attention --lattice-type word --suffix allarcs_40_reproduce --clip 10 --rootDir ../scripts/data/ --epochNum -2 --testOnly

