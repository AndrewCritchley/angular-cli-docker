#!/bin/bash

# Starts a new angular cli project

PROJECT_NAME=$1

docker run --rm -it \
   -v `pwd`/app:/app \
   ng-cli \
   ng new $PROJECT_NAME 

cd app/$PROJECT_NAME
find . -maxdepth 1 -exec mv {} .. \;
cd ../
rm -rf $PROJECT_NAME
cd ../
