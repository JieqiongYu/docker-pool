## Check drupal port
docker pull drupal

docker image inspect drupal
# "ExposedPorts": {
#             "80/tcp": {}
# },

## Make it work
docker-compose up

## Destroy it and remove all the volumes 
docker-compose down -v

