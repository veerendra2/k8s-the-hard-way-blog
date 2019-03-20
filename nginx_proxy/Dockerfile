FROM nginx:latest
MAINTAINER Veerendra Kakumanu

RUN mkdir -p /etc/nginx/tcpconf.d && echo "include /etc/nginx/tcpconf.d/*;" >> /etc/nginx/nginx.conf
COPY kubernetes.conf /etc/nginx/tcpconf.d/kubernetes.conf
