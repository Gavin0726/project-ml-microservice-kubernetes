#!/usr/bin/env bash

dockerpath="lnguoxun/flasksklearn:udacity_v1"
dockerimage=$dockerpath:udacity_v1

# Run in Docker Hub container with kubernetes
kubectl run flaskskearlndemo1 --image=$dockerpath\
    --port=80 --labels app=flaskskearlndemo

# List kubernetes pods
kubectl get pods

# Forward the container port to host
kubectl port-forward flaskskearlndemo1 8000:80

