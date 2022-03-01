# Apache Dockerfile

FROM redhat:latest
MAINTAINER Vishal <91195vichu789544@gmail.com>

RUN yum update -y; yum clean all
RUN yum install httpd -y
RUN echo "This is our new Apache Test Site" >> /var/www/html/index.html

EXPOSE 80

RUN service httpd start
