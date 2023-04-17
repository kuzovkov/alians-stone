FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y software-properties-common && \
    dpkg -l | grep php | tee packages.txt && \
    add-apt-repository -y ppa:ondrej/php
RUN apt-get update && \
    apt-get install -y php5.6-fpm && \
    apt-get install -y php5.6-curl && \
    apt-get install -y php5.6-mysql
RUN apt-get install -y php5.6-dom && \
    apt-get install -y php5.6-imagick && \
    apt-get install -y php5.6-mbstring && \
    apt-get install -y php5.6-zip && \
    apt-get install -y php5.6-gd && \
    apt-get install -y php5.6-intl


WORKDIR /var/www/html
COPY ./symfony .
COPY ./conf/php.ini /etc/php/5.6/fpm/php.ini

#Install composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
php -r "unlink('composer-setup.php');" && \
chmod a+x /usr/local/bin/composer

ENTRYPOINT /usr/sbin/php-fpm5.6 --nodaemonize --fpm-config /etc/php/5.6/fpm/php-fpm.conf

