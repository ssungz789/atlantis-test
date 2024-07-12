#!/bin/bash

sudo yum install -y httpd
sudo systemctl start httpd
sudo systemctl enable httpd

sudo echo "hello, ${name} enviornment is ${env}" > /var/www/html/index.html
