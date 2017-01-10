#!/bin/bash

#Install NodeJS
sudo apt-get install curl;

sudo apt-get install -y build-essential;
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -;
sudo apt-get install -y nodejs;

#Install MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927;
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list;
sudo apt-get update;
sudo apt-get install -y mongodb-org;
sudo service mongod start;

#Install Screen
sudo apt-get install -y screen;

#Install redis
wget http://download.redis.io/releases/redis-3.2.5.tar.gz;
tar xzf redis-3.2.5.tar.gz;
cd redis-3.2.5;
make;
make test;
sudo make install;
cd utils;
sudo ./install_server.sh;
sudo service redis_6379 start;

cd ../..;

#Install Chai Mocha
sudo npm install -g chai mocha bower shipit;


