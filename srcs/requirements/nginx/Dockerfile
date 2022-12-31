#NGINX: software for web serving, reverse proxying, caching, load balancing, media streaming, and more

#Specifies parent img from which we are building
FROM debian:buster

#Install nginx as if using debian OS
#RUN launches default cmd shell of OS
RUN apt-get update 

#Installs nginx and openssl
RUN apt-get install -y	nginx \
						openssl

#Create CSR (Certificate Signing Request)
RUN mkdir /etc/nginx/ssl
RUN openssl req -new -newkey rsa:2048 -nodes \
	-out /etc/nginx/ssl/cwastche.crt \
	-keyout /etc/nginx/ssl/cwastche.key \
	-subj "/C=BE/ST=Brussels/L=BRU/O=42/OU=cwastche/CN=cwastche"

#Copies our conf to nginx conf
COPY ./conf/nginx.conf /etc/nginx/conf.d

RUN mkdir -p /run/nginx

#Container listens on specified network port at runtime
#Uses TCP by default
EXPOSE 443 

CMD ["nginx", "-g", "daemon off;"]