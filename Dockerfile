FROM ubuntu:18.04
MAINTAINER CBREDigital Spain "jignacio.gutierrez@cbre.com"
RUN apt-get update
RUN apt-get install -y nginx
VOLUME /usr/share/nginx/html/
ADD /* /usr/share/nginx/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
