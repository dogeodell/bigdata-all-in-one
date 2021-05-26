# !/bin/bash
#这个文件不能直接用到.bashrc里面，因为用到了PWD变量
export JAVA_HOME=$PWD/01Enviorment/JDK8
export CLASSPATH=$JAVA_HOME/lib:$PWD/18connector:.
export CLASS_PATH=$CLASSPATH
export HADOOP_HOME=$PWD/01Enviorment/hadoop-3.2.1
export HADOOP_CLASSPATH=$HADOOP_HOME/lib
export HBASE_HOME=$PWD/01Enviorment/hbase-2.3.5
export HBASE_CLASSPATH=$HBASE_HOME/lib
export HBASE_BIN_PATH=$HBASE_HOME/bin
export HIVE_HOME=$PWD/01Enviorment/apache-hive-3.1.2-bin
export HIVE_CLASSPATH=$HIVE_HOME/lib:$JAVA_HOME/lib/mc8.0.21.jar
export DB_DERBY_HOME=$PWD/01Enviorment/db-derby-10.14.2.0-bin
export SPARK_HOME=$PWD/01Enviorment/spark-3.1.1-bin-hadoop3.2
export SBT_HOME=$PWD/01Enviorment/sbt

export PATH=$JAVA_HOME/bin:$PATH
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH
export PATH=$HBASE_HOME/bin:$PATH
export PATH=$HIVE_HOME/bin:$PATH
export PATH=$DB_DERBY_HOME/bin:$PATH
export PATH=$SPARK_HOME/bin:$PATH
export PATH=$SBT_HOME/bin:$PATH
export PATH=$PWD/13tools:$PATH
