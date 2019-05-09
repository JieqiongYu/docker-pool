# Initialize docker swarm
docker swarm init

# create a alpine image and ping 8.8.8.8
docker service create alpine ping 8.8.8.8

# check the containers for one service
# docker serivce ps <name>
docker service ps affectionate_thompson

# check the container
docker container ls

# Scale up to 3 replicas
# docker service update <ID> --replicas 3
docker service update 1vs5lhi462xx --replicas 3

# remove one container from the 3 replicas
# docker container rm -f <name>.<number>.<ID>
docker container rm -f affectionate_thompson.2.l0ha6vwnwu1moi47uxf7tnmgk

# remove the service 
docker service rm affectionate_thompson