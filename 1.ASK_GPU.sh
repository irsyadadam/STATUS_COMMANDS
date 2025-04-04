salloc --mem=80g --nodes=1 --ntasks-per-node=1 --cpus-per-task=2 \
  --partition=gpuA40x4,gpuA100x4 \
  --account=bdlo-delta-gpu --time=$1 --gpus-per-node=1

