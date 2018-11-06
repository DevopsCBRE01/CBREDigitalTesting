FROM ubuntu:14.04
MAINTAINER CBRE Digital Spain "jignacio.gutierrez@cbre.com"
RUN apt-get update
RUN apt-get install -y nginx
VOLUME /usr/share/nginx/html/
ADD eBusinessTemplate/* /usr/share/nginx/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
