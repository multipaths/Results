#!/usr/bin/env bash

# graph=path to graph pickle (pathme universe or by_db/by_entity subgraphs)
# output=where to save the generated kernel

results_dir=$(dirname $(dirname $(realpath $0)))

pkg_path=${HOME}/.diffupy
pkg_diffupath_path=${HOME}/.diffupath

python3 -m diffupy kernel \
  --graph ${results_dir}/data/pickles/universe/pathme_universe_non_flatten_collapsed_names_no_isolates_16_03_2020.pickle \
  --output ${pkg_diffupath_path}/kernels/kernel_regularized_pathme_universe.pickle
