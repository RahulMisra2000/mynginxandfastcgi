FROM nginx
WORKDIR /etc/nginx

# install the tools
RUN apt-get update
RUN apt-get install -y apache2-utils
RUN apt-get install -y vim
RUN apt-get install -y net-tools

# customize nginx
COPY ./default.conf ./conf.d/default.conf

# fastCGI for php
RUN apt-get install -y php-fpm  
COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./index.php /usr/share/nginx/html/index.php

# SSL
RUN mkdir rmssl
COPY ./self.cert ./rmssl/self.cert
COPY ./self.key ./rmssl/self.key

EXPOSE 443

# Since not specifying CMD or ENTRYPOINT, the ones in the base image will be used

