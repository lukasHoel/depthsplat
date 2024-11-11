#!/bin/bash

# enable the conda environment
eval "$(conda shell.bash hook)"
conda activate depthsplat

sbatch -p submit -q normal \
--job-name="train_depthsplat" \
--mail-type="END,FAIL" \
--mail-user="lukas.hoellein@tum.de" \
--mem=128G \
--gpus="rtx_a6000:1" \
--cpus-per-gpu=8 \
--time="04-00:00:00" \
--output="/rhome/lhoellein/slurm_logs/job_%j.log" \
$1