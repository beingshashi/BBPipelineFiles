#!/bin/bash
echo "Testing Remote Execution" > /home/ubuntu/remote_test.txt
cd /home/ubuntu/swyp-apis
git checkout .
git pull
npm install
pm2 reload server
pm2 reload solrConsumer
pm2 reload sqsConsumer
echo "Done"