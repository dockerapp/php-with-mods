FROM    php:5.6-apache
#FROM    php:7.1-apache
RUN     apt-get update && apt-get install -y \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
        libpq-dev \
        libxml2-dev \
	libcurl3-dev \
	libedit-dev
RUN     docker-php-ext-install mysqli curl gd mcrypt readline

