FROM php:7.2-apache
RUN apt-get update \
    && apt-get -y install git vim gnupg2 libgpgme11-dev sudo libfreetype6-dev libjpeg62-turbo-dev libc-client2007e-dev libmcrypt-dev libpng-dev \
    && rm -r /var/lib/apt/lists/*
RUN apt-get update \
    && apt-get -y install apt-transport-https libpng-dev zlib1g-dev libkrb5-dev \
    && rm -r /var/lib/apt/lists/*
RUN set -x \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install -j$(nproc) iconv gd \
    && docker-php-ext-install zip \
    # && docker-php-ext-configure imap --with-kerberos --with-imap-ssl \
    && docker-php-ext-configure imap --with-imap --with-kerberos --with-imap-ssl \
    && docker-php-ext-install imap \
    && pecl install gnupg \
    && docker-php-ext-enable gnupg \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && a2enmod rewrite \
    && echo file_uploads = On  > /usr/local/etc/php/conf.d/uploads.ini \
    && echo memory_limit = 128M  >> /usr/local/etc/php/conf.d/uploads.ini \
    && echo upload_max_filesize = 60M  >> /usr/local/etc/php/conf.d/uploads.ini \
    && echo post_max_size = 100M  >> /usr/local/etc/php/conf.d/uploads.ini \
    && echo max_execution_time = 600  >> /usr/local/etc/php/conf.d/uploads.ini \
    && echo extension=sodium >> /usr/local/etc/php/conf.d/uploads.ini \
    && echo extension = sodium >> /usr/local/etc/php/conf.d/uploads.ini