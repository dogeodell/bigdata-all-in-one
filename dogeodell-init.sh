# !/bin/bash
mysql -u root < HiveInit.sql
hdfs namenode -format
schematool -dbType mysql -initSchema