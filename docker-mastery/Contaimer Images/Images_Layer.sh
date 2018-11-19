## Oops that's old comman format
docker history nginx:latest

## image mysql
docker image history mysql

## image inspect
docker image inspect nginx

## tag one's own image
docker image tag nginx jieqiong/nginx

## docker image push 
docker image push jieqiong/nginx

## Give another tag to the existing image 
docker iamge tag jieqiong/nginx jieqiong/nginx:testing
## Check the work above 
docker image ls 
## push specific tag image 
docker image push jieqiopng/nginx:testing 
