FROM php:7.0-apache

RUN groupadd -r httpd && useradd -r -u 1001 -g httpd httpd

COPY ./setup.sh /
RUN chmod 0755 /setup.sh && /setup.sh

COPY ./contrib/ /opt/contrib
RUN sed -i -f /opt/contrib/ports.sed /etc/apache2/ports.conf && \
    sed -i -f /opt/contrib/apache2.sed /etc/apache2/apache2.conf

USER 1001
EXPOSE 8080

VOLUME /var/www/html
WORKDIR /var/www/html