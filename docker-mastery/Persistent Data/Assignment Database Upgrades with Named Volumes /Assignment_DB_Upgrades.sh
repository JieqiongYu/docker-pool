# Get 9.6.1 postgres
docker container run -d --name psql -v psql:/var/lib/postgresql/data postgres:9.6.1

## Check the logs
docker container logs -f psql 

## Stop the container
docker container stop psql

## Create a 9.6.2 postgres 
docker container run -d --name psql2 -v psql:/var/lib/postgresql/data postgres:9.6.2

## Check the logs 
docker container logs -f psql2
# LOG:  database system was shut down at 2018-11-20 07:39:17 UTC
# LOG:  MultiXact member wraparound protections are now enabled
# LOG:  database system is ready to accept connections
# LOG:   autovacuum launcher started
