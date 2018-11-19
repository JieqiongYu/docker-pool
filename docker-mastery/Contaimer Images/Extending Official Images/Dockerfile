# this same shows how we can extend/change an existing official image from Ducker Hub 

FROM nginx:latest
# highly recommend you always pin versions for anything beyond dev/learn 

WORKDIR /usr/share/nginx/html
# change working directory to root of nginx webhost 
# using WORKDIR is preferred to using 'RUN cd /some/path'

COPY index.html index.html 
# copy from local machine or your build servers into your container images 
# I don't have to specify EXPOSE or CMD because there in my FROM 
