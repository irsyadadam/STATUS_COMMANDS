srun --account=bdlo-delta-gpu --gpus-per-node=1 --nodes=1 --cpus-per-task=2 --partition=gpuA40x4,gpuA100x4 --time=$1 --mem=88g jupyter-notebook --no-browser --port=8888 --ip=0.0.0.0
