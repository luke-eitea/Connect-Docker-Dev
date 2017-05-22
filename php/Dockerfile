FROM php:7.0-apache
ENV MEMORY_LIMIT 128M
ENV POST_MAX_SIZE 60M
ENV UPLOAD_MAX_FILESIZE 60M
RUN apt-get update && apt-get -y install git vim && rm -r /var/lib/apt/lists/*
RUN docker-php-ext-install mysqli
RUN echo '#!/bin/bash\nfile=/var/www/html/home.php\nif [ -e "$file" ]; then\n    echo "File does exist"\n    exec /usr/local/bin/apache2-foreground\n	else\n    git clone --progress https://github.com/eitea/T-Time.git /var/www/html/\n    echo "DirectoryIndex home.php" > /var/www/html/.htaccess\n    chown www-data:www-data  -R /var/www/html\n    find /var/www/html -type d -exec chmod 755 {} \;\n    find /var/www/html -type f -exec chmod 644 {} \;\n    exec /usr/local/bin/apache2-foreground\nfi\n' >/etc/check_install.sh
RUN chmod o+x /etc/check_install.sh
