!/bin/bash
file=/var/www/html/index.php
if [ -e "$file" ]; then
    echo "File does exist"
    exec /usr/local/bin/docker-php-entrypoint
else 
    echo "File does not exist"
fi 

