call dogeodell-source
start hdfs namenode -format
start hive --service schematool -dbType mysql -initSchema