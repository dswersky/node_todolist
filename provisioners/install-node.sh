#!/bin/bash

#nodesource PPA
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
#update package database
sudo apt-get update
#install NodeJS
sudo apt-get install -y nodejs
#install PM2 to support run-as-service
sudo npm install -g pm2
#start TodoList app as a service
cd /vagrant
pm2 start ecosystem.config.js
#seed tasks
curl -X POST \
  http://localhost:3000/tasks \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/x-www-form-urlencoded' \
  -H 'Postman-Token: 02a2e24a-5e6e-7612-82a1-0e3d3338eb2c' \
  -d name=Finish%20Vagrant%20Videos