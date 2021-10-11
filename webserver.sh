#!/bin/bash
if [[ `which yum` ]]; then
yum install httpd -y
service httpd start
touch /var/www/html/index.html
chmod 777 /var/www/html/index.html
echo "<h1>this webserver via script</h1>" > /var/www/html/index.html 


elif [[ `which apt` ]]; then
apt install apache2 -y
rm -rf /var/www/html/index.html
touch /var/www/html/index.html
chmod 777 /var/www/html/index.html
echo "<h1>this webserver on ubuntu via script</h1>" > /var/www/html/index.html 

