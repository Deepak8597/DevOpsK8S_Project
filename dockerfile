FROM centos:latest
MAINTAINER deepakkumardas818@gmail.com
RUN yum install -y httpd \
zip\
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/klassy-cafe.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip klassy-cafe.zip
RUN cp -rvf klassy-cafe/*
RUN rm -rf klassy-cafe klassy-cafe.zip
CMD [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
EXPOSE 80 22
