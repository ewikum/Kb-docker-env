FROM centos:7
MAINTAINER wikum

ENV contaienr=docker

# update yum
RUN yum update -y && \
     yum clean all


# install NFS packages on NFS server
#RUN yum -y --setopt=tsflags=nodocs install nfs-utils
RUN rpmkeys --import file:///etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 && \
     yum -y --setopt=tsflags=nodocs install rpcbind nfs-utils


RUN mkdir -p /exports/shared

VOLUME ["/exports/shared"]

COPY ./setup.sh /
RUN chmod 777 /setup.sh

EXPOSE 111/udp 2049/tcp

ENTRYPOINT ["/setup.sh"]
#Once the packages are installed, enable and start NFS services.
# RUN systemctl enable rpcbind
# RUN systemctl enable nfs-server
# RUN rpcbind start
# RUN systemctl enable rpcbind
# RUN systemctl enable rpcbind

# # epel,remi
# RUN yum install -y epel-release && \
# 	yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
#     yum clean all

# #install php
# RUN yum install --enablerepo=remi-php70 -y php

# #install php modules
# RUN yum install --enablerepo=remi-php70 -y pdo-mysql php-mysql php-gd php-dom php-mbstring php-mcrypt php-pecl-apcu php-pecl-zendopcache 

# #install apache
# RUN yum install -y httpd

# EXPOSE 8080

# COPY test.txt /test.txt
# CMD tail -f /test.txt