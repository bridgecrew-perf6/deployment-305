#!/usr/bin/bash
echo "DEPLOYMENT IN PROGRESS"
# there are two versions of the possible deployment.
# we will create two files: one for a lean deployment, one for a full deployment



# DATA FOLDER CREATION
mkdir ./data

## DATABASE SECTION
mkdir ./data/mongo


# ENV FILE CREATION

## DATABASE SECTION
cp ./databases/mongo/.env.template ./databases/mongo/.env
## DATABASE INTERACTORS
cp ./microservices/external/mongo-express/.env.template ./microservices/external/mongo-express/.env