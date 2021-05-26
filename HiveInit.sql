drop user if exists hive;
create user hive identified by 'hive';
GRANT ALL PRIVILEGES ON *.* TO 'hive'@'%';
flush privileges;
create database if not exists hive;
use hive;