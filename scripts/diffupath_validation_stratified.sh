#!/usr/bin/env bash

# comparasion=among the validation schema proposed ["method", "entity", "database"]
# data_path=PATH to a directory where are a set of Data Inputs to perform differential validation
# graph=network as a graph in pickle format
# kernel=pre-generated network kernel in pickle format, can be generated with diffupy kernel command (check_kernel.sh)
# output=diffusion scores csv file output
# iterations=number of diffusion performed in each Dataset to generate deviation

results_dir=$(dirname $(dirname $(realpath $0)))

pkg_path=${HOME}/.diffupath

python3 -m diffupath diffusion evaluate \
  --comparison 'by_entity_method' \
  --data_path ${results_dir}/data/input_mappings \
  --graph ${results_dir}/data/pickles/universe/pathme_universe_non_flatten_collapsed_names_no_isolates_16_03_2020.pickle \
  --kernel ${pkg_path}/kernels/kernel_regularized_pathme_universe.pickle \
  --output ${results_dir}/outputs/evaluation_by_entity_method.json \
  --iterations 100


#python3 -m diffupath diffusion evaluate \
#  --comparison 'by_entity_db' \
#  --data_path ${results_dir}/data/input_mappings \
#  --graph ${results_dir}/data/pickles/universe/pathme_universe_non_flatten_collapsed_names_no_isolates_16_03_2020.pickle \
#  --kernel ${pkg_path}/kernels/kernel_regularized_pathme_universe.pickle \
#  --output ${results_dir}/outputs/evaluation_by_entity_db.json \
#  --iterations 100
