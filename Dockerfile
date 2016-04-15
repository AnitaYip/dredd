FROM ubuntu:14.04
MAINTAINER Foundation DevOps foundation-devops@realpage.com
LABEL version="1.0.0" \
      com.realpage.dredd.version="1.0.9"

# install node.js and npm
RUN apt-get -qq update \
    && apt-get install -y nodejs \
    && apt-get install -y npm \
    && ln -s /usr/bin/nodejs /usr/bin/node \
    && apt-get clean \

    && npm install -g dredd@1.0.9