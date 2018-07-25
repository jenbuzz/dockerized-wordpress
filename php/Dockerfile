FROM php:7.2-fpm

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y libpng-dev libjpeg-dev libpq-dev libxml2-dev gnupg \
	&& docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr \
	&& docker-php-ext-install gd mysqli opcache zip \
	&& rm -rf /var/lib/apt/lists/* \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs && npm install npm --global

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp

COPY ./conf/wordpress-*.ini /usr/local/etc/php/conf.d/
