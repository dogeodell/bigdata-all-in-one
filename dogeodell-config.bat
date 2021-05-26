type 14config/hosts >> C:/Windows/System32/drivers/etc
cp 14config/hadoop/* 01Enviorment/hadoop-3.2.1/etc/hadoop
cp 14config/hbase/* 01Enviorment/hbase-2.3.5/conf
cp 14config/hive/* 01Enviorment/apache-hive-3.1.2-bin/conf
cp 14config/sshd_config C:/ProgramData/ssh
mkdir 01Enviorment\storage\hadoop\datanode
mkdir 01Enviorment\storage\hadoop\namenode
powershell restart-service sshd
mkdir C:\Users\node\.ssh
type 14config\id_rsa.pub >> C:\Users\node\.ssh\authorized_keys