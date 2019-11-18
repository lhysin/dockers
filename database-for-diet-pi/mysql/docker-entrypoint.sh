#!/bin/bash

set -e
set -x

host="$1"
shift
cmd="$@"

until mysql -u root -proot -e 'select 1'; do
  >&2 echo "MySQL is unavailable - sleeping"
  sleep 1
done

mysql -u root -proot -e "create user IF NOT EXISTS 'lhysin'@'%' identified by 'lhysin';" -e "grant all privileges on *.* to 'lhysin'@'%';" -e "update mysql.user set Host = 'localhost' where User = 'root';" -e "FLUSH PRIVILEGES;"

>&2 echo "Mysql is up - executing command"
exec $cmd