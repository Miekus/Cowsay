# syntax=docker/dockerfile:1
FROM node
COPY src /cowsay/app
COPY docker-entrypoint.sh /usr/local/bin
RUN chmod a+x /usr/local/bin/docker-entrypoint.sh
WORKDIR /cowsay/app
RUN npm install
ENTRYPOINT ["docker-entrypoint.sh"]