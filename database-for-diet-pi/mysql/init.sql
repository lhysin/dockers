CREATE USER IF NOT EXISTS 'lhysin'@'%' identified by 'lhysin';
grant all privileges on *.* to 'lhysin'@'%';
update mysql.user set Host = 'localhost' where User = 'root';
FLUSH PRIVILEGES;