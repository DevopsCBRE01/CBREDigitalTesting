FROM ubuntu:14.04
MAINTAINER CBREDigitalSpain "jignacio.gutierrez@cbre.com"
RUN apt-get update
RUN apt-get install -y nginx
VOLUME /usr/share/nginx/html/
ARG webpage
ADD /* /usr/share/nginx/html/
RUN echo $webpage
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
