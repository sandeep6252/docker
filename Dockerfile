FROM centos:latest
MAINTAINER sandeep625@gmail.com
RUN yum install httpd -y \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/fanadesh.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip fandesh.zip
RUN cp -rvf fanadesh-html/* .
RUN rm -rf fanadesh-html fandesh.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
