#!/bin/bash
set -e
cp -a /nfs-temp/. /exports/shared/
chown 48:48 -R /exports/shared/
#mkdir -p /exports/nfs-share
#chmod 777 /exports/shared
echo "/exports/shared dockerlamp_web_*(rw,sync,no_root_squash)" > /etc/exports
exportfs -r
# rpcbind
# rpc.statd -p 662 -o 2020
# rpc.nfsd

#exec rpc.mountd -p 892 --foreground

# exportfs -r
exec /usr/lib/systemd/systemd --system --unit=nfs-server.service