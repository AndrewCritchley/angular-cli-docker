#!/bin/bash

# Runs the container and automatically removes it when it exits.

docker run --rm -it \
   -v `pwd`/app:/app \
   -p 4200:4200 \
   ng-cli \
   /bin/bash
