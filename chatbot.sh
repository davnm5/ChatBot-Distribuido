#!/bin/bash

if [ "$#" != 1 ] | [ "$1" != "start" ] && [ "$1" != "clean" ]; then
    echo "Illegal parameters"
    exit 1
fi

if [ "$1" == "start" ];then
    echo "Starting Chatbot and Loadtest..."
    kubectl apply -f kubernetes/deployment_chatbot.yaml
    kubectl apply -f kubernetes/configmap_loadtest.yaml
    kubectl apply -f kubernetes/deployment_loadtest.yaml

else
    echo "Cleaning..."
    kubectl delete -f kubernetes/deployment_chatbot.yaml
    kubectl delete -f kubernetes/configmap_loadtest.yaml
    kubectl delete -f kubernetes/deployment_loadtest.yaml
fi
