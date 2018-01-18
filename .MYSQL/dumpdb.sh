#!/bin/sh
echo "Please wait .... "
mysqldump -uroot -proot kubotadb > /DB_DUMPS/Kubota.db-$(env TZ=Asia/Tokyo date +%Y%m%d-%H%M%S).sql