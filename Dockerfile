FROM ubuntu
WORKDIR /home
RUN apt-get update
RUN apt-get -y install apache2
COPY ./website/* /var/www/html/ -r
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
