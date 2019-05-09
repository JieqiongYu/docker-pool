docker build -t jieqiong/nodeweb .
# docker run -p [Route incoming requests to this port on local host to...] : [... this port inside the container] <image id>
docker run -p 8080:8080 jieqiong/nodeweb