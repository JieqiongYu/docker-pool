## Get mysql image
docker pull mysql 

## Run the container
docker container run -d --name mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=True mysql 

## Check inside 
docker container inspect mysql 

## Get a list of volume 
docker volume list 
## Inspect volume 
docker volume inspect 

## Give a name on the volume 
docker container run -d --name mhysql -e MYSQL_ALLOW_EMPTY_PASSWORD=True -v mysql-db:/var/lib/mysql mysql 
