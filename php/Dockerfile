FROM php:7.0-apache
RUN apt-get update && apt-get -y install git vim && rm -r /var/lib/apt/lists/*
RUN docker-php-ext-install mysqli
ADD check_install.sh /etc/check_install.sh
RUN chmod 777 /etc/check_install.sh
