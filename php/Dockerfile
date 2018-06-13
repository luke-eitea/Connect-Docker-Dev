FROM php:7.2-apache
RUN apt-get update && apt-get -y install git vim libfreetype6-dev libjpeg62-turbo-dev libmcrypt-dev libpng-dev && rm -r /var/lib/apt/lists/*
RUN docker-php-ext-install mysqli
# RUN docker-php-ext-install -j$(nproc) iconv mcrypt gd
RUN docker-php-ext-install -j$(nproc) iconv gd
RUN docker-php-ext-install zip
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
#RUN docker-php-ext-install -j$(nproc) gd
COPY check_install.sh /etc/check_install.sh
RUN chmod o+x /etc/check_install.sh
RUN a2enmod rewrite
RUN echo file_uploads = On  > /usr/local/etc/php/conf.d/uploads.ini
RUN echo memory_limit = 128M  >> /usr/local/etc/php/conf.d/uploads.ini
RUN echo upload_max_filesize = 60M  >> /usr/local/etc/php/conf.d/uploads.ini
RUN echo post_max_size = 100M  >> /usr/local/etc/php/conf.d/uploads.ini
RUN echo max_execution_time = 600  >> /usr/local/etc/php/conf.d/uploads.ini

RUN echo extension=sodium >> /usr/local/etc/php/conf.d/uploads.ini
RUN echo extension = sodium >> /usr/local/etc/php/conf.d/uploads.ini

# ENTRYPOINT [ "/bin/bash", "-c", "/etc/check_install.sh" ]
