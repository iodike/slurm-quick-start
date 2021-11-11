#!/bin/bash

srun \
  --container-image=/netscratch/enroot/dlcc_pytorch_20.10.sqsh \
  --container-save=/netscratch/"$USER"/dlcc_pytorch_20.10_"$1".sqsh \
  --pty /bin/bash