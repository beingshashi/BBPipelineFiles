#!/bin/bash
echo "Testing Remote Execution" > /home/ubuntu/remote_test.txt
cd /var/www/html
git checkout .
git pull origin dev
npm install
pm2 reload all
echo "Done"