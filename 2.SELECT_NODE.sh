#!/bin/bash

# List available idle nodes
echo "Checking available nodes..."
AVAILABLE_NODES=$(sinfo -N -o "%N %T %C" | grep "idle")

if [ -z "$AVAILABLE_NODES" ]; then
    echo "No idle nodes available."
else
    echo "Available nodes:"
    echo "$AVAILABLE_NODES"
fi

# Find the node assigned to the current user
MY_NODE=$(squeue -u $USER -o "%N" | tail -n 1)

if [ -z "$MY_NODE" ] || [ "$MY_NODE" == "NODELIST" ]; then
    echo "You have no running jobs. Cannot determine assigned node."
    exit 1
fi

echo "Your allocated node: $MY_NODE"

# SSH into the allocated node
echo "Connecting to $MY_NODE..."
ssh $MY_NODE

