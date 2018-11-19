## Create 2 images running
docker container run -d --name nginx nginx
docker container run -d --name mysql -e MYSQL_RANDOM_ROOT_PASSWORD=true mysql

## Making sure the 2 images are running 
docker contianer ls

## Look inside the running images 
docker container top mysql
docker container top nginx

## Inspect docker container 
docker container inpsect mysql 

## Check the docker container stats
docker container stats
