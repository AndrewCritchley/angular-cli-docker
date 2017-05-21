FROM ubuntu:zesty

ARG ANGULAR_CLI_VERSION=1.0.4

RUN apt-get update \ 
  && apt-get -y install curl xz-utils nano

RUN curl -LO https://nodejs.org/dist/v6.10.0/node-v6.10.0-linux-x64.tar.xz \
  && tar -C /usr --strip-components 1 -xvf node-v6.10.0-linux-x64.tar.xz \
  && rm -f node-v6.10.0-linux-x64.tar.xz

RUN npm install -g @angular/cli@$ANGULAR_CLI_VERSION

VOLUME ["/app"]

WORKDIR /app

EXPOSE 4200
