#!/usr/bin/env bash
# Creating and Running a Container from an image
docker run hello-world

# Overriding default commands
docker run busybox echo hi there
docker run busybox echo bye there
docker run busybox echo how are you
docker run busybox ls

# Listing Running Containers 
docker ps

# Container Lifecycle
# docker run = docker create + docker start

docker create hello-world
docker start -a 75c715ae56f17fc9dba35069cce02ea7218805fdc1c5d196d08c6e1eb1bfc7d6

# Restarting Stopped Containers 
docker ps --all
# docker start <CONTAINER ID>
docker start 75c715ae56f1

# Removing Stopped Containers 
docker ps --all
docker system prune

# Retrieve log outputs 
docker create busy echo hi there
# docker start [ID]
docker start c8fd612c69f9bc9f8faf17f60c3c35d232ee753b43740084b553a7b36ab0f22f
# docker logs [ID]
docker logs c8fd612c69f9bc9f8faf17f60c3c35d232ee753b43740084b553a7b36ab0f22f

# Stopping Containers 
docker create busybox ping google.com
docker start f5d476a362755627a9f059fc435cb75731c799eef3f49d0cb81b32690fd0997d
docker logs f5d476a362755627a9f059fc435cb75731c799eef3f49d0cb81b32690fd0997d
# Using stop will generate kill command after 10 seconds
# docker stop [ID]
docker stop f5d476a362755627a9f059fc435cb75731c799eef3f49d0cb81b32690fd0997d
# docker kill [ID]
docker kill f5d476a362755627a9f059fc435cb75731c799eef3f49d0cb81b32690fd0997d

# Multi-Command Containers
# Run a redis container
docker run redis
# Try redis-cli in another terminal
redis-cli
# Error would return

# Executing Commands in Running Contaienrs
# docker exec -it [CONTAINER ID] [COMMAND]
docker exec -it 2045bd03b7c7 redis-cli
set myvalue 5
get myvalue 5

# Getting a Command Prompt in a Container 
# docker exec -it [CONTAINER ID] sh
docker exec -it 2045bd03b7c7 sh
# Use Ctrl + D to quit

# Starting with a Shell
docker run -it busybox sh

