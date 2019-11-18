FROM jsurf/rpi-mariadb

# Environment variables
ENV MYSQL_ROOT_PASSWORD root

RUN /etc/init.d/mysql start
RUN mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "create user IF NOT EXISTS 'lhysin'@'%' identified by 'lhysin';" -e "grant all privileges on *.* to 'lhysin'@'%';" -e "update mysql.user set Host = 'localhost' where User = 'root';" -e "FLUSH PRIVILEGES;"

COPY ./docker-entrypoint.sh /
RUN ["chmod", "+x", "/docker-entrypoint.sh"]

ENTRYPOINT ["/docker-entrypoint.sh"]
