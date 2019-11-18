FROM jsurf/rpi-mariadb

COPY ./docker-entrypoint.sh /
RUN ["chmod", "+x", "/docker-entrypoint.sh"]

#RUN mysqld_safe & until mysqladmin ping; do sleep 1; done && \
#    mysql -uroot -e "CREATE USER IF NOT EXISTS 'lhysin'@'%' identified by 'lhysin'" && \
#    mysql -uroot -e "grant all privileges on *.* to 'lhysin'@'%';" && \
#    mysql -uroot -e "update mysql.user set Host = 'localhost' where User = 'root';" && \
#    mysql -uroot -e "FLUSH PRIVILEGES;"

ENTRYPOINT ["/docker-entrypoint.sh"]
