#!/usr/bin/bash
echo "DEPLOYMENT IN PROGRESS"
# there are two versions of the possible deployment.
# we will create two files: one for a lean deployment, one for a full deployment
git submodule init
git submodule update


# DATA FOLDER CREATION
mkdir ./data

## DATABASE SECTION
mkdir ./data/mongo
mkdir ./data/neo4j
mkdir ./data/redis


# ENV FILE CREATION

## DATABASE SECTION
### mongodb
cp ./databases/mongo/.env.template ./databases/mongo/.env
### neo4j
cp ./databases/neo4j/.env.template ./databases/neo4j/.env
### redis
cp ./databases/redis/.env.template ./databases/redis/.env
## DATABASE INTERACTORS
cp ./microservices/external/mongo-express/.env.template ./microservices/external/mongo-express/.env

# run docker
docker-compose up