#!/bin/bash
cd /home/ec2-user/baby-app
npm install
pm2 delete all || true
pm2 start index.js --name baby-app

