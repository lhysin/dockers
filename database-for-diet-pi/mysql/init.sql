CREATE USER IF NOT EXISTS 'lhysin'@'%' identified by 'lhysin';
GRANT ALL PRIVILEGES on *.* to 'lhysin'@'%';
--GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root';
--update mysql.user set Host = 'localhost' where User = 'root';
FLUSH PRIVILEGES;