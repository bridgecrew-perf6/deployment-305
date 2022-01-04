#!/usr/bin/bash
echo "DEPLOYMENT IN PROGRESS"
# there are two versions of the possible deployment.
# we will create two files: one for a lean deployment, one for a full deployment



# DATA FOLDER CREATION
mkdir ./data

## DATABASE SECTION
mkdir ./data/mongo
mkdir ./data/neo4j


# ENV FILE CREATION

## DATABASE SECTION
### mongodb
cp ./databases/mongo/.env.template ./databases/mongo/.env
### neo4j
cp ./databases/neo4j/.env.template ./databases/neo4j/.env
## DATABASE INTERACTORS
cp ./microservices/external/mongo-express/.env.template ./microservices/external/mongo-express/.env