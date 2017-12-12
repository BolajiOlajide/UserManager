FROM ubuntu

RUN apt-get update -y --fix-missing && \
    apt-get -y install nodejs && \
    apt-get -y install npm && \
    apt-get -y install mongodb-server && \
    mkdir /srv/www

COPY ExpressJS-API-Demo  /srv/www/ExpressJS-API-Demo

COPY start.sh  /srv/www/start.sh

RUN chmod +x /srv/www/start.sh

ENTRYPOINT "/srv/www/start.sh" && /bin/bash
