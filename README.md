[![Gavin0726](https://circleci.com/gh/Gavin0726/project-ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/Gavin0726/project-ml-microservice-kubernetes)

## Project Overview

In this project, a machine learning based prediction model is deployed. `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. The model is trained with the data set published in Kaggle site.

This model could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

This project can be running in local, Docker and Kubernates environment. 

### Running `app.py` Standalone


1. `python3 -m venv ~/.env1`
2. `source ~/.env1/bin/activate`
3. `make install`
2. `make lint`
3. `python app.py`


### Running `app.py` in Docker

1. Register Docker account and installation
2.  `./run_docker.sh`


### Running `app.py` in Kubernetes

1. Install minikube and start
2. `./run_docker.sh`
3. `./upload_docker.sh`
4. `./run_kubernetes.sh`
5. `./make_prediction.sh`


### Make prediction

Prepare the payload of a POST request with a json object that contains the concrete values (the input) of the features of the prediction model. 

Performs an sklearn prediction
        
        input looks like:
        {
        "CHAS":{
        "0":0
        },
        "RM":{
        "0":6.575
        },
        "TAX":{
        "0":296.0
        },
        "PTRATIO":{
        "0":15.3
        },
        "B":{
        "0":396.9
        },
        "LSTAT":{
        "0":4.98
        }
        
        result looks like:
        { "prediction": [ <val> ] }
        
 

### The files in the repository

1. `.circleci`has one configuration file config.yml that includes the necessary instructions to setup a CICD pipeline to fully automate the process
2. `docker_out.txt and kubernetes_out.txt`  give examples of the expected output of running the app in Docker and Kubernetes. 
3. `app.py` that serves out predictions (inference) about housing prices through API calls. 
