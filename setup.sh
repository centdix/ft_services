#!/bin/bash

minikube addons enable dashboard
minikube addons enable ingress
minikube start --vm-driver=virtualbox --extra-config=apiserver.service-node-port-range=1-10000
kubectl apply -f srcs/nginx.yaml
kubectl apply -f srcs/ingress.yaml
kubectl apply -f srcs/ftps.yaml
kubectl apply -f srcs/mysql.yaml
kubectl apply -f srcs/wordpress.yaml
kubectl apply -f srcs/phpmyadmin.yaml
kubectl apply -f srcs/influxdb-config.yaml
kubectl apply -f srcs/influxdb.yaml
kubectl apply -f srcs/telegraf-config.yaml
kubectl apply -f srcs/telegraf.yaml
kubectl apply -f srcs/grafana.yaml
minikube mount srcs/grafana-config/:/grafana
