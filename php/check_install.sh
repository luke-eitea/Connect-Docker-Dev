#!/bin/bash
file=/var/www/html/home.php
if [ -e "$file" ]; then
    echo "File does exist"
else 
    git clone --progress https://github.com/eitea/T-Time.git /var/www/html/
fi 
/usr/local/bin/apache2-foreground
