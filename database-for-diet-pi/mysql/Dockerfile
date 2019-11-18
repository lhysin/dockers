FROM jsurf/rpi-mariadb

RUN docker exec -it rpi3-mariadb10 mysql -u root -proot \
	-e "create user IF NOT EXISTS 'lhysin'@'%' identified by 'lhysin';" \
	-e "grant all privileges on *.* to 'lhysin'@'%';" \
	-e "update mysql.user set Host = 'localhost' where User = 'root';" \
	-e "FLUSH PRIVILEGES;"

ENTRYPOINT ["/docker-entrypoint.sh"]