#!/usr/bin/env bash

# data=data excel file
# network=kernel
# graph_path=pathme universe pickle
# number of iterations
# dataset to be used {1,2,3}

python3 -m diffupath diffusion evaluate \
  --data ./validation_datasets/set1.xlsx \
  --network ./kernel.pickle \
  --graph_path ./pathme_universe_non_flatten_collapsed_names_no_isolates_16_03_2020.pickle \
  --iterations 100 \
  --dataset 1
