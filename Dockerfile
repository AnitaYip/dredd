FROM node:7.0
MAINTAINER Foundation DevOps foundation-devops@realpage.com
LABEL com.realpage.dredd.version="4.7.0"

RUN npm install -g dredd@4.7.0

# Allow dredd to see items in the vendor path 
ENV PATH /var/www/html/vendor/bin:$PATH

WORKDIR /var/www/html

# prevent node from running continuously
CMD [ "/usr/local/bin/dredd", "--version" ]