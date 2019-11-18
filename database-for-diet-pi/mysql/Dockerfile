FROM jsurf/rpi-mariadb

ADD init.sql /docker-entrypoint-initdb.d/
RUN chown -R mysql:mysql /docker-entrypoint-initdb.d/

CMD ["mysqld", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]

COPY ./docker-entrypoint.sh /
RUN ["chmod", "+x", "/docker-entrypoint.sh"]

#RUN mysqld_safe & until mysqladmin ping; do sleep 1; done && \
#    mysql -uroot -e "CREATE USER IF NOT EXISTS 'lhysin'@'%' identified by 'lhysin'" && \
#    mysql -uroot -e "grant all privileges on *.* to 'lhysin'@'%';" && \
#    mysql -uroot -e "update mysql.user set Host = 'localhost' where User = 'root';" && \
#    mysql -uroot -e "FLUSH PRIVILEGES;"

ENTRYPOINT ["/docker-entrypoint.sh"]
