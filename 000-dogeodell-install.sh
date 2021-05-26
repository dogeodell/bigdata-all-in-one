# !/bin/bash
sudo -k echo hello
sudo chown -R $USER .
sudo mkdir 01Enviorment
sudo systemctl start mysqld
echo 安装sshd服务
# sudo apt install -y openssh-server mysql-server
# 如果是ubuntu镜像则把这一句注释去掉
echo 添加用户
sudo ./dogeodell-useradd.sh
echo 解压文件
sudo ./dogeodell-extract.sh
echo 安装补丁
sudo ./dogeodell-patcher.sh
echo 配置文件
sudo ./dogeodell-config.sh
echo 初始化环境init
source dogeodell-source.sh
echo 初始化
sudo chown -R $USER */*
echo 'export JAVA_HOME='$PWD/01Enviorment/JDK8 > /home/node/.bash_profile
echo 'export CLASSPATH='$JAVA_HOME/lib:$PWD/18connector:.  >> /home/node/.bash_profile
echo 'export CLASS_PATH='$CLASSPATH  >> /home/node/.bash_profile
echo 'export HADOOP_HOME='$PWD/01Enviorment/hadoop-3.2.1 >> /home/node/.bash_profile
echo 'export HADOOP_CLASSPATH='$HADOOP_HOME/lib  >> /home/node/.bash_profile
echo 'export HBASE_HOME='$PWD/01Enviorment/hbase-2.3.5  >> /home/node/.bash_profile
echo 'export HBASE_CLASSPATH='$HBASE_HOME/lib  >> /home/node/.bash_profile
echo 'export HBASE_BIN_PATH='$HBASE_HOME/bin  >> /home/node/.bash_profile
echo 'export HIVE_HOME='$PWD/01Enviorment/apache-hive-3.1.2-bin  >> /home/node/.bash_profile
echo 'export HIVE_CLASSPATH='$HIVE_HOME/lib:$JAVA_HOME/lib/mc8.0.21.jar  >> /home/node/.bash_profile
echo 'export DB_DERBY_HOME='$PWD/01Enviorment/db-derby-10.14.2.0-bin >> /home/node/.bash_profile
echo 'export SPARK_HOME='$PWD/01Enviorment/spark-3.1.1-bin-hadoop3.2 >> /home/node/.bash_profile
echo 'export SBT_HOME='$PWD/01Enviorment/sbt >> /home/node/.bash_profile
echo 'export PATH='$PATH >> /home/node/.bash_profile
echo 'cd '$PWD >> /home/node/.bash_profile
cat /home/node/.bash_profile > /home/node/.bashrc
# ./dogeodell-init.sh
echo 生成新的ssh秘钥
ssh-keygen -t rsa -b 4096 -f /home/node/.ssh/id_rsa -q -N ""
cat /home/node/.ssh/id_rsa.pub >> /home/node/.ssh/authorized_keys
sudo chown -hR node:node /home/node/.bash_profile
sudo chown -hR node:node /home/node/.ssh
sudo chown -hR node:node /home/node/

