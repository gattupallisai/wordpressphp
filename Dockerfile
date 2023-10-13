FROM ubuntu:latest
RUN apt update -y
RUN apt install wget zip tzdata -y
RUN apt install apache2 php php-mysqlnd -y
RUN rm -rf /var/www/html/*
COPY . /var/www/html
ENV DB_USER=
ENV DB_NAME=
ENV DB_PASSWORD=
ENV DB_HOST=
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
