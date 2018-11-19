## Usage of -p --publish 
docker container run -p 80:80 --name webhost -d nginx 

## Check the container webhost port 
docker container port webhost

## Usage of --format 
docker container inspect --format '{{ .NetworkSettings.IPAddress }}' webhost

## Show networks 
docker network ls

## Usage of network inspect to get detailed info of one specific network
docker network inspect bridge 

## Create network 
docker network create my_app_net

## Use --network option to specify the network when creating a new container 
docker container run -d --name new_nginx --network my_app_net nginx:alpine
## Check the detailed info in my_app_net to make sure the newly created container exists there 
docker network inspect my_app_net

## Use --connect and --disconnect for existing containers to specify the network they belong to again 

## Use --connect
## 1167466929d8 is the id of my_app_net
## 3da17d6fec89 is the id of webhost 
docker network connect 1167466929d8 3da17d6fec89
## Check the detailed info for webhost 
docker container inspect 3da17d6fec89

## Use --disconnect 
docker network disconnect 1167466929d8 3da17d6fec89
## Check the detailed info for webhost 
docker container inspect 3da17d6fec89

## Add a new container (my_nginx) in my_app_net 
docker container run -d --name my_nginx --network my_app_net nginx:alpine
## Inspect my_app_network
docker network inspect my_app_net

## Try to demonstrate that my_nginx could find new_nginx using their name as dns name 
docker container exec -it my_nginx ping new_nginx
## It works the other way as well
docker container exec -it new_nginx ping my_nginx

## Assignment: Using Containers for CLI Testing
## Use different Linux distro containers to check curl cli tool version 
## Centos:7
docker container run --rm -it centos:7 bash
yum update curl
curl --version
# curl 7.29.0 (x86_64-redhat-linux-gnu) libcurl/7.29.0 NSS/3.34 zlib/1.2.7 libidn/1.28 libssh2/1.4.3
# Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtsp scp sftp smtp smtps telnet tftp 
# Features: AsynchDNS GSS-Negotiate IDN IPv6 Largefile NTLM NTLM_WB SSL libz unix-sockets 
exit

## Ubuntu:14.04
docker container run --rm -it ubuntu:14.04 bash
apt-get update && apt-get install curl
# curl --versioncurl 7.35.0 (x86_64-pc-linux-gnu) libcurl/7.35.0 OpenSSL/1.0.1f zlib/1.2.8 libidn/1.28 librtmp/2.3
# Protocols: dict file ftp ftps gopher http https imap imaps ldap ldaps pop3 pop3s rtmp rtsp smtp smtps telnet tftp 
# Features: AsynchDNS GSS-Negotiate IDN IPv6 Largefile NTLM NTLM_WB SSL libz TLS-SRP
exit

## Assignment: DNS Round Robin Test
## 1) Create a new network called dude 
docker network create dude 
## 2) Create 2 containers 
docker container run -d --network dude --net-alias search elasticsearch:2 
docker container run -d --network dude --net-alias search elasticsearch:2 
## Check the running containers 
docker container ls
## 3) Run alpine nslookup search with --net to see the two containers list for the same DNS name 
## Run the nslookup command on the search DNS entry and then immediately exit 
docker container run --rm --net dude alpine nslookup search 
# nslookup: can't resolve '(null)': Name does not resolve
# Name:      search
# Address 1: 172.19.0.3 search.dude
# Address 2: 172.19.0.2 search.dude
## 4) Run centos curl -s search:9200 with --net multiple times until you see both “name” fields show 
docker container run --rm --net dude centos curl -s search:9200 
# {
#   "name" : "Blade",
#   "cluster_name" : "elasticsearch",
#   "cluster_uuid" : "jPKAfWvuSQClTZn1CN-lTA",
#   "version" : {
#     "number" : "2.4.6",
#     "build_hash" : "5376dca9f70f3abef96a77f4bb22720ace8240fd",
#     "build_timestamp" : "2017-07-18T12:17:44Z",
#     "build_snapshot" : false,
#     "lucene_version" : "5.5.4"
#   },
#   "tagline" : "You Know, for Search"
# }
docker container run --rm --net dude centos curl -s search:9200 
# {
#   "name" : "Cassie Lang",
#   "cluster_name" : "elasticsearch",
#   "cluster_uuid" : "XLudDX5yTLOnCqgUHUOukg",
#   "version" : {
#     "number" : "2.4.6",
#     "build_hash" : "5376dca9f70f3abef96a77f4bb22720ace8240fd",
#     "build_timestamp" : "2017-07-18T12:17:44Z",
#     "build_snapshot" : false,
#     "lucene_version" : "5.5.4"
#   },
#   "tagline" : "You Know, for Search"
# }