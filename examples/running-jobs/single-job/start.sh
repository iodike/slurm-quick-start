#!/bin/bash

USER=$USER
GPUS=1
CPUS=2
MEM=24G

PARTITION="<your-partition>"
IMAGE="<your-image>"

cd ..

srun -K \
--gpus="$GPUS" \
--cpus-per-gpu="$CPUS" \
--mem="$MEM" \
--partition "$PARTITION" \
--container-mounts=/netscratch/"$USER":/netscratch/"$USER",/ds:/ds:ro,"$(pwd)":"$(pwd)" \
--container-image=/netscratch/"$USER"/"$IMAGE" \
--container-workdir="$(pwd)" \
bash scripts/wrapper.sh \
bash scripts/run.sh $@

cd scripts || return
