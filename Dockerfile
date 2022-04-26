FROM ubuntu
WORKDIR /home
RUN apt-get update
RUN apt-get -y install apache2
RUN copy ./website/* /var/www/html/ -r
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
