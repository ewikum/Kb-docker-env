#!/bin/sh
echo "Please wait .... "
mysql -u root -proot -e "DROP database kubotadb;"
mysql -u root -proot -e "Create database kubotadb;"
mysql -u root -proot -D kubotadb < /init.sql