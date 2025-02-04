salloc --mem=80g --nodes=1 --ntasks-per-node=1 --cpus-per-task=2 \
  --partition=gpuA40x4-interactive,gpuA100x4-interactive \
  --account=bdlo-delta-gpu --time=00:30:00 --gpus-per-node=1

