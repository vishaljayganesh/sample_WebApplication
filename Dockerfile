# Apache Dockerfile

FROM centos:centos6
MAINTAINER Vishal <91195vichu789544@gmail.com>

RUN yum -y update; yum clean all
RUN yum -y install httpd
RUN echo "This is our new Apache Test Site" >> /var/www/html/index.html

EXPOSE 80

RUN echo "/sbin/service httpd start" >> /root/.bashrc
