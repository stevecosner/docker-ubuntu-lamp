
FROM ubuntu
MAINTAINER steve

RUN apt-get update
RUN apt-get install tzdata -y
RUN apt-get install apache2 -y
RUN apt-get install php -y
RUN apt-get install mysql-server -y
RUN apt-get install php-mysql -y
RUN apt-get install libapache2-mod-php7.4 -y
RUN apt install git -y
RUN git clone https://github.com/BlackrockDigital/startbootstrap-landing-page.git
RUN mv /var/www/html/index.html /var/www/html/index.main 
RUN cp -r startbootstrap-landing-page/. /var/www/html
COPY lamp-files/. /var/www/html
RUN mv /etc/apache2/mods-enabled/php7.4.conf /etc/apache2/mods-enabled/php7.4.conf.backup
RUN mv /var/www/html/php7.4.conf /etc/apache2/mods-enabled/
EXPOSE 80
