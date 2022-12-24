#Specifies parent img from which we are building
FROM debian:buster

#Install nginx as if using debian OS
#RUN launches default cmd shell of OS
RUN apt-get update 
RUN apt-get install -y nginx 
#//openssl ??

#Container listens on specified network port at runtime
#Uses TCP by default
EXPOSE 443 

CMD ["nginx", "-g", "daemon off;"]