#!/bin/bash
ver = 0.0.1

docker build -t cart-microservice-nodejs:$ver ../microservices-architect-config-starter/cart-microservice-nodejs/
docker tag cart-microservice-nodejs:$ver manjeetyadav19/cart:latest
docker push manjeetyadav19/cart:latest

docker build -t eureka-discovery-server:$ver ../microservices-architect-config-starter/eureka-discovery-server/
docker tag eureka-discovery-server:$ver manjeetyadav19/discovery:latest
docker push manjeetyadav19/discovery:latest


docker build -t ui-web-app-reactjs:$ver ../microservices-architect-config-starter/ui-web-app-reactjs/
docker tag ui-web-app-reactjs:$ver manjeetyadav19/ui:latest
docker push manjeetyadav19/ui:latest

docker build -t zuul-api-gateway:$ver ../microservices-architect-config-starter/zuul-api-gateway/
docker tag zuul-api-gateway:$ver manjeetyadav19/zuul:latest
docker push manjeetyadav19/zuul:latest

docker build -t offers-microservice-spring-boot:$ver ../microservices-architect-config-starter/offers-microservice-spring-boot/
docker tag offers-microservice-spring-boot:$ver manjeetyadav19/offer:latest
docker push manjeetyadav19/offer:latest

docker build -t shoes-microservice-spring-boot:$ver ../microservices-architect-config-starter/shoes-microservice-spring-boot/
docker tag shoes-microservice-spring-boot:$ver manjeetyadav19/shoe:latest
docker push manjeetyadav19/shoe:latest

docker build -t wishlist-microservice-python:$ver ../microservices-architect-config-starter/wishlist-microservice-python/
docker tag wishlist-microservice-python:$ver manjeetyadav19/wishlist:latest
docker push manjeetyadav19/wishlist:latest

