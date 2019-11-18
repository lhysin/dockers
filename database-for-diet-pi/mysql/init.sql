GRANT ALL PRIVILEGES on *.* to 'lhysin'@'%' IDENTIFIED BY 'root';
UPDATE mysql.user set Host = 'localhost' where User = 'root';
FLUSH PRIVILEGES;