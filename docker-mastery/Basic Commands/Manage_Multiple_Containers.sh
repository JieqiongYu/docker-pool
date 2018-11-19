## Create containers
## nginx
docker container run --publish 80:80 --detach --name nginx_sample nginx
## mysql
docker container run --publish 3306:3306 --detach -e MYSQL_RANDOM_ROOT_PASSWORD=yes --name mysql_sample mysql
## httpd
docker container run --publish 8080:80 --detach --name httpd_sample httpd

## Check logs for mysql to get the random password
docker container logs mysql_sample 
## bieree1doo6ahh9fe7Ogunit2hoh3Si5

## Clean it all up with docker container stop and docker container rm 
docker container stop nginx_sample
docker container rm nginx_sample

docker container stop mysql_sample
docker container rm mysql_sample

docker container stop httpd_sample
docker container rm httpd_sample