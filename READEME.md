## HADOOP+HBASE+HIVE+SPARK在windows和linux一键部署

##### **[原博客链接地址]**

### http://lxc.life:23456/wordpress/tag/%e5%a4%a7%e6%95%b0%e6%8d%ae%e8%af%be%e8%ae%be/



**[安装指南]**

**先在windows下解压然后运行14config/new-key.bat**



### Windows用到的是bat,Linux是sh

环境分为windows和linux

**ubuntu**

sudo apt install -y openssh-server mysql-server

**centos**

sudo yum install -y mysql-server

**Linux统一步骤**

cd /home

sudo mkdir node

sudo chown -R $USER node



**windwos**

啥都不用



**Winodws负责控制的主机需要将其主机ssh秘钥替换为14config/id_rsa**

**或者linux直接使用我打包好的 直接执行002-dogeodell-Master.sh**



**或者使用压缩包原带、ssh-keygen来生成新的秘钥**



**打开压缩包修改如下内容**

~~14config\hadoop\core-site.xml将THIS地址改为自己主机的地址~~

~~14config\hadoop\yarn-site.xml将THIS地址改为自己主机的地址~~

将14config中的id_rsa.pub替换成自己的公钥

09patcher\hive\lib需要你替换成自己MySQL需要的Connector(例如笔者的mysql是8的版本则需要版本8的connector)

14config\hive\hive-size需要替换成你自己的数据库配置

14config\hosts改成自己成员的主机代号

其中将控制的ip设置为master

14config\hadoop\workers将改为自己组员的主机代号

**两个样本分别为**





**打包然后把压缩包上传到/home/node路径之下**

随后在/home/node路径执行tar -xvf DogeOdellAmazingWork.tar解压到当前路径

#### **最后执行dogeodell-install**

修改配置可以重复执行dogeodell-config.sh/bat



