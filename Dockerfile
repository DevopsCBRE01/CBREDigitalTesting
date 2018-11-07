FROM ubuntu:14.04
MAINTAINER CBREDigitalSpain "jignacio.gutierrez@cbre.com"
RUN apt-get update
RUN apt-get install -y nginx
VOLUME /usr/share/nginx/html/
ARG webpage=.htaccess
ADD /* /usr/share/nginx/html/
RUN mv /usr/share/nginx/html/$webpage /usr/share/nginx/html/.htaccessUAT
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
