# Run Dockerfile
docker build .

# docker run [CONTAINER ID]
docker run 9bdfe3d73417

# Tagging an Image
# docker build -t [DOCKER ID]/[image]:[version] .
docker build -t jieqiong/redis-server:latest .
docker run jieqiong/redis-server