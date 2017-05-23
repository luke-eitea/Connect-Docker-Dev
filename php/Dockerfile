FROM php:7.0-apache
RUN apt-get update && apt-get -y install git vim && rm -r /var/lib/apt/lists/*
RUN docker-php-ext-install mysqli
RUN echo '#!/bin/bash\nfile=/var/www/html/home.php\nif [ -e "$file" ]; then\n    echo "File does exist"\n    exec /usr/local/bin/apache2-foreground\n	else\n    git clone --progress https://github.com/eitea/T-Time.git /var/www/html/\n    echo "DirectoryIndex home.php" > /var/www/html/.htaccess\n    chown www-data:www-data  -R /var/www/html\n    find /var/www/html -type d -exec chmod 755 {} \;\n    find /var/www/html -type f -exec chmod 644 {} \;\n    exec /usr/local/bin/apache2-foreground\nfi\n' >/etc/check_install.sh
RUN chmod o+x /etc/check_install.sh
RUN echo file_uploads = On  > /usr/local/etc/php/conf.d/uploads.ini
RUN echo memory_limit = 128M  >> /usr/local/etc/php/conf.d/uploads.ini
RUN echo upload_max_filesize = 60M  >> /usr/local/etc/php/conf.d/uploads.ini
RUN echo post_max_size = 100M  >> /usr/local/etc/php/conf.d/uploads.ini
RUN echo max_execution_time = 600  >> /usr/local/etc/php/conf.d/uploads.ini
