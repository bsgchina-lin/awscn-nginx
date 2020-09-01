#!/bin/bash

sudo apt update
sudo apt install -y nginx
sudo sed -i 's/listen 80/listen 8081/g' /etc/nginx/sites-enabled/default
#echo -n AWS China Terraform Demo | sudo tee /var/www/html/index.html
echo Terraform Demo Created: ${time} | sudo tee -a /var/www/html/index.html
sudo systemctl restart nginx
exit 0
