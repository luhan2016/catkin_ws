#!/bin/bash

cd ~/zookeeper-3.4.13
sudo bin/zkServer.sh start
bin/zkCli.sh -server 127.0.0.1:2181



