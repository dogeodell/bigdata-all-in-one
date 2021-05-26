cp -r 09patcher/hadoop/* 01Enviorment/hadoop-3.2.1/
cp -r 09patcher/hive/* 01Enviorment/apache-hive-3.1.2-bin/
cp 01Enviorment/hadoop-3.2.1/share/hadoop/common/lib/guava-27.0-jre.jar 01Enviorment/apache-hive-3.1.2-bin/lib/
rm 01Enviorment/apache-hive-3.1.2-bin/lib/guava-19.0.jar
cp 01Enviorment/db-derby-10.14.2.0-bin/lib/*.jar 01Enviorment/apache-hive-3.1.2-bin/lib/