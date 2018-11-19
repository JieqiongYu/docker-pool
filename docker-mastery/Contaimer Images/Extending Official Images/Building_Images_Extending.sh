## Run one container of existed image nginx
docker container run -p 80:80 --rm nginx

## Build our own container with souce code 
docker image build -t nginx-with-html .

## Run the new image we just built.
docker container run -p 80:80 --rm nginx-with-html 

## Make a different tag and push it to the docker hub
docker image tag nginx-with-html:latest jieqiong/nginx-with-html:latest
docker image push jieqiong/nginx-with-html