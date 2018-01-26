FROM busybox
MAINTAINER Brandyn Marshall <branmarshall21@gmail.com>

ADD index.html /www/index.html

EXPOSE 8088

# Create a basic webserver and sleep forever
CMD httpd -p 8088 -h /www; tail -f /dev/null
