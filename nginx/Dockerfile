FROM jwilder/nginx-proxy

RUN rm /etc/nginx/sites-enabled/default

COPY sites-enabled/ /etc/nginx/sites-enabled
COPY vhost.d/default /etc/nginx/vhost.d/default
COPY custom.conf /etc/nginx/conf.d/custom.conf