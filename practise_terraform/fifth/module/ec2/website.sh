#!/bin/bash 

sudo apt update
sudo apt install wget unzip apache2 -y
sudo systemctl start apache2
mkdir -p webfiles
cd webfiles
sudo wget https://www.tooplate.com/zip-templates/2098_health.zip
sudo unzip -o 2098_health.zip
sudo rm -rf /var/www/html/*
sudo cp -r 2098_health/* /var/www/html/
cd ..
sudo rm -rf webfiles
sudo systemctl restart apache2
