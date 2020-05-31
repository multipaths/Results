#!/usr/bin/env bash

# graph=path to graph pickle (pathme universe or by_db/by_entity subgraphs)
# output=where to save the generated kernel

results_dir=$(dirname $(dirname $(dirname $(realpath $0))))

pkg_path=${HOME}/.diffupy
pkg_diffupath_path=${HOME}/.diffupath

python3 -m diffupy kernel \
  --graph ${results_dir}/data/pickles/databases/graph_pathme_kegg.pickle \
  --output ${pkg_diffupath_path}/kernels/kernel_regularized_kegg.pickle
