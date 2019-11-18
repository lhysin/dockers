FROM jsurf/rpi-mariadb

ONBUILD RUN echo 'before query'
ONBUILD RUN docker exec -it rpi3-mariadb10 mysql -u root -proot \
	-e "create user IF NOT EXISTS 'lhysin'@'%' identified by 'lhysin';" \
	-e "grant all privileges on *.* to 'lhysin'@'%';" \
	-e "update mysql.user set Host = 'localhost' where User = 'root';" \
	-e "FLUSH PRIVILEGES;"
ONBUILD RUN echo 'after query'
ENTRYPOINT ["/docker-entrypoint.sh"]