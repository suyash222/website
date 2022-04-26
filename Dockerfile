FROM ubuntu
WORKDIR /home
RUN apt-get update
RUN apt-get -y install apache2 git
RUN git clone https://github.com/suyash222/website
RUN cp ./website/* /var/www/html/ -r
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]
