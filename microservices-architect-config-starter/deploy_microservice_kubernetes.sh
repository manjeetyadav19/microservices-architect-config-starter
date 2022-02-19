#!/bin/bash

kubectl apply -f ../microservices-architect-config-starter/cart-microservice-nodejs/kube.yml

kubectl apply -f ../microservices-architect-config-starter/eureka-discovery-server/kube.yml

kubectl apply -f ../microservices-architect-config-starter/ui-web-app-reactjs/kube.yml

kubectl apply -f ../microservices-architect-config-starter/zuul-api-gateway/kube.yml

kubectl apply -f ../microservices-architect-config-starter/offers-microservice-spring-boot/kube.yml

kubectl apply -f ../microservices-architect-config-starter/shoes-microservice-spring-boot/kube.yml

kubectl apply -f ../microservices-architect-config-starter/wishlist-microservice-python/kube.yml