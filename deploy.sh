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
mkdir ./data/nextcloud
mkdir ./data/mariadb
mkdir ./data/ghost

# ENV FILE CREATION

## DATABASE SECTION
### mongodb
cp ./databases/mongo/.env.template ./databases/mongo/.env
### neo4j
cp ./databases/neo4j/.env.template ./databases/neo4j/.env
### redis
cp ./databases/redis/.env.template ./databases/redis/.env
### mariadb
cp ./databases/mariadb/.env.template ./databases/mariadb/.env
## DATABASE INTERACTORS
cp ./microservices/external/mongo-express/.env.template ./microservices/external/mongo-express/.env

## nextcloud
cp ./microservices/external/nextcloud/.env.template ./microservices/external/nextcloud/.env

cp ./microservices/external/ghost/.env.template ./microservices/external/ghost/.env
# run docker
docker-compose up