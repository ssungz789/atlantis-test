#!/bin/bash

yum install -y httpd
systemctl start httpd
systemctl enable httpd

echo "hello, ${name} enviornment is ${env}" > /var/www/html/index.html
