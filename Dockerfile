FROM node:7.0
MAINTAINER Foundation DevOps foundation-devops@realpage.com
LABEL com.realpage.dredd.version="2.2.3"

RUN npm install -g dredd@2.2.3

# prevent node from running continuously
CMD [ "" ]