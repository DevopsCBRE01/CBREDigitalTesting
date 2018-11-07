FROM ubuntu:14.04
MAINTAINER CBRE Digital Spain "jignacio.gutierrez@cbre.com"
RUN apt-get update
RUN apt-get install -y nginx
VOLUME /usr/share/nginx/html/
ENV webpage
ADD /* /usr/share/nginx/html/
COPY /usr/share/nginx/html/$webpage /usr/share/nginx/html/.htaccess
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
