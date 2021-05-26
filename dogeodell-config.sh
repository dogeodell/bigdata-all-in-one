# !/bin/bash
cat 14config/hosts >> /etc/hosts
cp 14config/sshd_config_linux /etc/ssh/sshd_config
service sshd restart
cp 14config/hadoop/* 01Enviorment/hadoop-3.2.1/etc/hadoop
cp 14config/hadoop/yarn-site-linux.xml 01Enviorment/hadoop-3.2.1/etc/hadoop/yarn-site.xml
cp 14config/hbase/* 01Enviorment/hbase-2.3.5/conf
cp 14config/hive/* 01Enviorment/apache-hive-3.1.2-bin/conf
mkdir -p 01Enviorment/storage/hadoop/datanode
mkdir -p 01Enviorment/storage/hadoop/namenode
mkdir /home/node/.ssh
mkdir -p /home/node/.ssh/
cat 14config/id_rsa.pub >> /home/node/.ssh/authorized_keys