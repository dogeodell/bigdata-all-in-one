set PATH=^%JAVA_HOME^%\bin;%PATH%
set PATH=^%HADOOP_HOME^%\bin;^%HADOOP_HOME^%\sbin;%PATH%
set PATH=^%HBASE_HOME^%\bin;%PATH%
set PATH=^%HIVE_HOME^%\bin;%PATH%
set PATH=^%DB_DERBY_HOME^%\bin;%PATH%
set JAVA_HOME=%~dp001Enviorment\JDK8
set HADOOP_HOME=%~dp001Enviorment\hadoop-3.2.1
set HADOOP_CLASSPATH=%%HADOOP_HOME%%\lib
set HBASE_HOME=%~dp001Enviorment\hbase-2.4.2
set HIVE_HOME=%~dp001Enviorment\apache-hive-3.1.2-bin
set DB_DERBY_HOME=%~dp001Enviorment\db-derby-10.15.2.0-bin

set PATH=%JAVA_HOME%\bin;%DB_DERBY_HOME%\bin;%HIVE_HOME%\bin;%HBASE_HOME%\bin;%HADOOP_HOME%\bin;%HADOOP_HOME%\sbin;%PATH%