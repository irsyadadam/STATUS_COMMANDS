srun --account=bdlo-delta-cpu --partition=cpu-interactive --time=$1 --mem=80g jupyter-notebook --no-browser --port=8888 --ip=0.0.0.0
