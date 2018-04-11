FROM php:apache

RUN rm -rf /var/www/html/*

COPY ./public_html/ /var/www/html/

RUN chown -R www-data:www-data /var/www/html/

EXPOSE 80:80
