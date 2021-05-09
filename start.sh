#!/bin/sh

eval $(minikube docker-env) 
docker build .docker/nginx -t nginx-mysql-client
minikube start --vm-driver=virtualbox
minikube addons enable ingress
kubectl apply -f k8s/namespace.yaml 
kubectl apply -f k8s/nginx/deployment.yaml 
kubectl apply -f k8s/nginx/service.yaml 
kubectl apply -f k8s/mysql/deployment.yaml 
kubectl apply -f k8s/mysql/service.yaml 
kubectl apply -f k8s/ingress.yaml
minikube ip