FROM debian:buster

RUN apt-get update
RUN apt-get install -y mariadb-server \
    mariadb-client \
	vim \
    && rm -rf /var/lib/apt/lists/*

#Allow to run the daemon of mysql
#Purge and re-create /var/lib/mysql with appropriate ownership
RUN mkdir -p /var/run/mysqld \
	&& chown -R mysql:mysql /var/run/mysqld \
	&& chmod 777 /var/run/mysqld

EXPOSE 3306

COPY		./conf/mysqld.conf ~/my.cnf
COPY		./conf/mysqld.conf /etc/mysql/my.cnf
COPY		./conf/mysqld.conf /etc/my.cnf


#Copy of the .sh and .sql in the /bin of the container to be able to run the program
COPY ./tools/mariadb.sh		/usr/local/bin/
COPY ./conf/wordpress.sql	/usr/local/bin/

RUN chmod +x /usr/local/bin/mariadb.sh
RUN chmod +x /usr/local/bin/wordpress.sql

ENTRYPOINT [ "/usr/local/bin/mariadb.sh" ]

#Command to launch mariadb and enable the database to listen globally
CMD ["mysqld", "--bind-address=0.0.0.0"]