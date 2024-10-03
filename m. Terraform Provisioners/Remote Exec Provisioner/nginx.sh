#!/bin/bash
sudo -i
yum update -y
sudo amazon-linux-extras install nginx1
systemctl start nginx
systemctl enable nginx
cd /usr/share/nginx/
rm -rvf html
wget https://csstemplatebucket.s3.us-west-1.amazonaws.com/Finter+Free+Website+Template+-+Free-CSS.com.zip
unzip Finter+Free+Website+Template+-+Free-CSS.com.zip
mv finter-html/ html
systemctl restart nginx