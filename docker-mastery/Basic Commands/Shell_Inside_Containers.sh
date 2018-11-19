## Docker cli is a great substitute for adding SSH to containers 
## -t, -tty: Allocate a pesudo-TTY; Simulates a real terminal, like what SSH does 
## -i: Keep session open to receive terminal input 
docker container run -it --name proxy nginx bash 
docker container run -it --name ubuntu ubuntu 

## Ubuntu image
apt-get update
## Install curl
apt-get install -y curl
## Test curl 
curl google.com

## After exit ubuntu, if we need to get back 
docker container start -ai ubuntu 

## Run additional process in running container 
docker container exec -it mysql bash 


