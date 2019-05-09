# Use docker-machine to create 3 nodes
docker-machine create node1
docker-machine create node2
docker-machine create node3

# ssh to the node 
docker-machine sssh node1
# get the env info about the node
docker-machine env node1
