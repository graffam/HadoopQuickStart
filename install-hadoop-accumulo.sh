#!/bin/bash

yum -y install wget
wget http://apache.mirrors.ionfish.org/hadoop/common/hadoop-2.6.2/hadoop-2.6.2.tar.gz
tar -zxvf hadoop-2.6.2.tar.gz
wget http://www.carfab.com/apachesoftware/zookeeper/stable/zookeeper-3.4.7.tar.gz
tar -zxvf zookeeper-3.4.7.tar.gz
wget http://www.trieuvan.com/apache/accumulo/1.7.0/accumulo-1.7.0-bin.tar.gz
tar -zxvf accumulo-1.7.0-bin.tar.gz

cp /vagrant/bashrc /home/vagrant/.bashrc
cp /vagrant/core-site.xml /home/vagrant/hadoop-2.6.2/etc/hadoop/core-site.xml
cp /vagrant/hdfs-site.xml /home/vagrant/hadoop-2.6.2/etc/hadoop/hdfs-site.xml
cp /vagrant/yarn-site.xml /home/vagrant/hadoop-2.6.2/etc/hadoop/yarn-site.xml
cp /vagrant/hadoop-env.sh /home/vagrant/hadoop-2.6.2/etc/hadoop/hadoop-env.sh
chmod -R 777 /home/vagrant/hadoop-2.6.2

mkdir /usr/hdfs
mkdir /usr/hdfs/data
mkdir /usr/hdfs/name

chmod -R 777 /usr/hdfs

systemctl stop firewalld
