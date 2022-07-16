#!/bin/bash

#get GPG key
curl -fsSL https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
#create a sources list file
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
#reload package database
sudo apt update
#install Mongo
sudo apt install -y mongodb-org
#start mongo
sudo systemctl start mongod.service
sudo systemctl status mongod
sudo systemctl enable mongod
