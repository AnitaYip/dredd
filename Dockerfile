FROM mhart/alpine-node:5.10
MAINTAINER Foundation DevOps foundation-devops@realpage.com
LABEL version="1.0.0" \
      com.realpage.dredd.version="1.0.9"

# install dredd
RUN npm install -g dredd@1.0.9
