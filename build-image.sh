#!/bin/bash

ANGULAR_CLI_VERSION=1.0.4

sudo docker build \
   -t ng-cli:$ANGULAR_CLI_VERSION \
   --build-arg ANGULAR_CLI_VERSION=$ANGULAR_CLI_VERSION \
   .
