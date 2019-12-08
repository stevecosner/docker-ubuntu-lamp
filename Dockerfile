FROM ubuntu
MAINTAINER steve

RUN apt-get update
RUN apt-get install tzdata -y
RUN apt-get install apache2 -y
RUN apt-get install php -y
RUN apt-get install mysql-server -y
RUN apt-get install php-mysql -y
RUN apt-get install libapache2-mod-php7.2 -y
RUN apt install git -y
RUN git clone https://github.com/BlackrockDigital/startbootstrap-landing-page.git
RUN cp -r startbootstrap-landing-page/. /var/www/html
RUN git clone https://github.com/stevecosner/lamp-files.git
RUN cp -r lamp-files/. /var/www/html
RUN mv /etc/apache2/mods-enabled/php7.2.conf /etc/apache2/mods-enabled/php7.2.conf.backup
RUN cp lamp-files/php7.2.conf /etc/apache2/mods-enabled/
RUN rm /var/www/html/php7.2.conf
EXPOSE 80
