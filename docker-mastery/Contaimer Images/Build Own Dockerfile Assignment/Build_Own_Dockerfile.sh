## Build It
docker image build -t assignment_node .

## Run It
docker container run --rm -p 80:3000 assignment_node

## Tag it before pushing to Docker Hub
docker image tag assignment_node jieqiong/testing-node 
docker image push jieqiong/testing-node

## Remove local cache
docker image rm jieqiong/testing-node

## Run from the remote Docker Hub
docker container run --rm -p 80:3000 jieqiong/testing-node
