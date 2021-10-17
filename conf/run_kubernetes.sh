#!/usr/bin/env bash

dockerpath="miketyson40166/capstone"

# Run in Docker Hub container with kubernetes
kubectl run udacitycapstone\
    --image=$dockerpath\
    --port=80 --labels app=udacitycapstone

# List kubernetes pods
kubectl get pods

# Forward the container port to host
while :
do
    kubectl get pods | grep Running
    if [ $? -eq 0 ]; then
        break
    fi
done

kubectl port-forward udacitycapstone 8000:80 --address='0.0.0.0'
exit 0

# kubectl get pods