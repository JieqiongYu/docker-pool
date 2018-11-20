## Get the mounting point
docker container run -d --name nginx -p 80:80 --rm nginx
docker container run -d --name nginx -p 80:80 -v "$(pwd)":/usr/share/nginx/html nginx
docker container run -d --name nginx2 -p 8080:80 nginx

## Get into the bash console of the first container 
docker container exec -it nginx bash
cd /usr/share/nginx/html