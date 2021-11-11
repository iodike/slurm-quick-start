#!/bin/bash

srun \
  --container-image=/netscratch/"$USER"/dlcc_pytorch_20.10_"$1".sqsh \
  --container-save=/netscratch/"$USER"/dlcc_pytorch_20.10_"$2".sqsh \
  --pty /bin/bash