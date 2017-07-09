FROM ubuntu:14.04
MAINTAINER Ankush Jhalani "ankush.jhalani@gmail.com"
RUN apt-get update && apt-get install -y apache2
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ONBUILD ADD . /var/www/
EXPOSE 80
ENTRYPOINT ["/user/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
