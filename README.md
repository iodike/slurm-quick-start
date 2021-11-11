# SQS: Slurm Quick Start
Quick start to SLURM.

## Custom software

### 1. Clone images
Clone new *Enroot* image from existing images.<br>
See: `examples/custom-software/clone`<br>

After calling below command, an interactive shell spawns, where you can install your required libraries.
When you're finished close the shell via `exit`. The cloned image will be created and is available under `/netscratch/$USER/`.<br>

Format:
> bash `clone_image.sh` `<postfix>`

Example:
> bash `clone_image.sh` `v1`

Note:
- This script uses as template image `dlcc_pytorch_20.10.sqsh`. Find more images under `/netscratch/enroot/`.
- `<postfix>` is a custom identifier which allows you to make your image unique.

<br>

### 2. Modify images
Modify your own images.<br>
See: `examples/custom-software/modify`

Same procedure as for [image cloning](#clone-images).

Format:
> bash `modify_image.sh` `<postfix>` `<new_postfix>`

Example:
> bash `modify_image.sh` `v1` `v2`

#### Note

- `<postfix>` is the custom identifier specified during [image cloning](#clone-images).
- `<new_postfix>` is the postfix of your modified image. (leave same as `<postfix>` for overwrite)

<br>

## Running jobs

### 1. Simple single run
Start a single-GPU job.<br>
See: `examples/running-jobs/single-job`

This script requires to be set in a directory `scripts` next to the script which is to be called.<br>
The arguments `<args>` passed with `start.sh` will be passed to your `run.sh` and can be accessed accordingly via `$1, $2, ...`.

Format:
> bash `start.sh` `<args>`

Example: 
> bash `start.sh` `-a 1` `-b 2` `-c 3`

<br>

#### Note

- run.sh:
> `run.sh` requires the command for calling your script.

- start.sh:
>`start.sh` requires variables `PARTITION` and `IMAGE`.
> - `PARTITION`: See possible [partitions](http://projects.dfki.uni-kl.de/km-publications/web/ML/core/hpc-doc/docs/slurm-cluster/partitions/#partitions), e.g., `RTX3090`.
> - `IMAGE`: See possible images under `/netscratch/enroot/`, e.g., `dlcc_pytorch_20.10.sqsh`.

- wrapper.sh:
> `wrapper.sh` is implicitely called and required for running the script in the VM instead within cluster itself.

<br>

## Additional resources

http://projects.dfki.uni-kl.de/km-publications/web/ML/core/hpc-doc/

https://support.ceci-hpc.be/doc/_contents/QuickStart/SubmittingJobs/SlurmTutorial.html

<br>
