#!/usr/bin/env bash
# 50. Assembling a Dockerfile
docker build -t jieqiong/node-visits .
docker run jieqiong/node-visits

# 54. Docker Compose Commands
docker-compose up

## 55. Stopping Docker Compose Containers
docker-compose down

## 56. Container Maintenance with Compose 
# docker compose run with rebuild
docker-compose up --build

## 58. Container Status with Docker Compose 
# This command could only be executed correctly if a docker-compose.yml file exists in the same directory
docker-compose ps