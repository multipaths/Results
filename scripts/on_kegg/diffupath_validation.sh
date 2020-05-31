#!/usr/bin/env bash

# comparasion=among the validation schema proposed ["by_method", "by_entity", "by_DB"]
# data_path=PATH to a directory where are a set of Data Inputs to perform differential validation
# graph=network as a graph in pickle format. In this case ON KEGG (check graph_pathme_KEGG.pickle)
# kernel=pre-generated network kernel in pickle format, can be generated with diffupy kernel command (check_kernel.sh)
# output=diffusion scores csv file output
# iterations=number of diffusion performed in each Dataset to generate deviation

results_dir=$(dirname $(dirname $(dirname $(realpath $0))))

pkg_path=${HOME}/.diffupath

python3 -m diffupath diffusion evaluate \
  --comparison 'method' \
  --data_path ${results_dir}/data/input_mappings \
  --graph ${results_dir}/data/pickles/databases/graph_pathme_kegg.pickle \
  --kernel ${pkg_path}/kernels/kernel_regularized_kegg.pickle \
  --output ${results_dir}/outputs/evaluation_metrics.json \
  --iterations 10
