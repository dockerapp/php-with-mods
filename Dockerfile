FROM    php:7.1-apache
RUN     apt-get update && apt-get install -y \
        libbz2-dev \
        libcurl3-dev \
        libedit-dev \
        libjpeg62-turbo-dev \
	libldap2-dev \
        libmcrypt-dev \
        libpng12-dev \
        libpq-dev \
        libxml2-dev \
	libxslt-dev \
	ssmtp \
	&& rm -rf /var/lib/apt/lists/*
RUN     ln -fs /usr/lib/x86_64-linux-gnu/libldap.so /usr/lib/

RUN     docker-php-ext-install mysqli curl gd mcrypt readline ftp iconv json mbstring soap xml xmlreader xmlrpc xmlwriter zip xsl bz2 ldap
