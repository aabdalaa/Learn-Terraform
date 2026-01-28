#!/bin/bash

sudo apt update
sudo apt upgrade
sudo apt install apache2 -y
git clone https://github.com/aabdalaa/SITE-PARA-HOMENAGEM.git
cd /SITE-PARA-HOMENAGEM
sudo cp * -R /var/www/html