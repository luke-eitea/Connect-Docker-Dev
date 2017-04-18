FROM debian:jessie 
RUN apt-get update && apt-get install -y cron curl && rm -r /var/lib/apt/lists/*
RUN echo  '* * * * *   curl http://c-php/src/autotasks.php' > /etc/cron.d/connect-cron
RUN crontab /etc/cron.d/connect-cron
CMD ["cron", "-f"]
