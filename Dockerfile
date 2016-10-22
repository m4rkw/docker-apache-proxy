FROM m4rkw/ubuntu

RUN apt-get -yq --allow-unauthenticated install apache2

RUN a2enmod proxy
RUN a2enmod proxy_http

ADD assets /

EXPOSE 80 443
