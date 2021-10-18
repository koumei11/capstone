#!/usr/bin/env bash

# dockerpath="miketyson40166/capstone"

# Run in Docker Hub container with kubernetes
# kubectl run udacitycapstone\
#     --image="miketyson40166/capstone"\
#     --port=80 --labels app=udacitycapstone

# List kubernetes pods
# kubectl get pods

# Forward the container port to host
while :
do
    kubectl get pods | grep Running
    if [ $? -eq 0 ]; then
        break
    fi
done

# kubectl get pods