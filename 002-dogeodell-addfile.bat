call dogeodell-source
call hdfs dfs -mkdir -p ./17test

call hdfs dfs -put ./17test/TestArticle1.txt ./17test/
call hdfs dfs -put ./17test/TestArticle2.txt ./17test/
call hdfs dfs -put ./17test/TestArticle3.txt ./17test/
