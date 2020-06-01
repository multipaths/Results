#!/usr/bin/env bash

# input=data csv file
# network=kernel pickle (generated previously with _kernel.sh)
# output=diffusion scores csv file output
# method=among provided diffusion methods ["raw", "ml", "gm", "ber_s", "ber_p", "mc", "z"]
# binarize=If logFC provided in dataset, convert logFC to binary
# threshold=Codify node labels by applying a threshold to logFC in input
# absolute_value=Codify node labels by applying threshold to | logFC | in input
# p_value=Statistical significance (p-value)
# format_output=Statistical significance (p-value)

results_dir=$(dirname $(dirname $(realpath $0)))

pkg_path=${HOME}/.diffupy
pkg_diffupath_path=${HOME}/.diffupath

python3 -m diffupath diffusion run \
  --input ${results_dir}/data/input_samples/input_sample_1.csv \
  --output ${results_dir}/outputs/diff_scores_sample1_on_pathmeuniverse.csv \
  --method raw
