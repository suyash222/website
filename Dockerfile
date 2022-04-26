FROM ubuntu
WORKDIR /home
RUN apt-get update
RUN apt-get -y install apache2
ADD * /var/www/html/
ADD images/ /var/www/html/images/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
