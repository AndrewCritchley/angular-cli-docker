FROM ubuntu:zesty

ARG ANGULAR_CLI_VERSION=1.0.4
ARG NODEJS_VERSION=6.10.0

RUN apt-get update \ 
  && apt-get -y install curl xz-utils nano

RUN curl -LO https://nodejs.org/dist/v$NODEJS_VERSION/node-v$NODEJS_VERSION-linux-x64.tar.xz \
  && tar -C /usr --strip-components 1 -xvf node-v$NODEJS_VERSION-linux-x64.tar.xz \
  && rm -f node-v$NODEJS_VERSION-linux-x64.tar.xz

RUN npm install -g @angular/cli@$ANGULAR_CLI_VERSION

VOLUME ["/app"]

WORKDIR /app

EXPOSE 4200
