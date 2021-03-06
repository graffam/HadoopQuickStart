Easy To Use vagrant file containing barebones hadoop in psuedo-distrubuted mode.
Intent is to allow new developers to quickly have a basic working version of hadoop
so they can explore HDFS and learn how the pieces connect.

**What does the Virtual Machine Contain?**
* centos-7
* Java-8
* Hadoop-2.6


**Pre Reqs**
* VirtualBox (https://www.virtualbox.org/wiki/Downloads)
* Vagrant (https://www.vagrantup.com/)

**How to Use**
* Install VirtualBox
* Install vagrant
* use the command "vagrant up" in the root folder of this project
* Wait a bit....
* When vagrant up is finished, ssh into the newly created virtual machine
  - address: 127.0.0.1
  - port: 22
* Login with username: vagrant, password: vagrant
* Enable keyless SSH by typing in the following commands:
  - ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa
  - cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys
* format the name node with: hadoop namenode -format
* start dfs with: start-dfs.sh
* Confirm namenode started with command 'jps' or by visiting the hdfs website outside of the vm located at 127.0.0.1:50070
* PROFIT!
