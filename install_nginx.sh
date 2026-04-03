#!/bin/bash

sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx 
sudo systemctl enable nginx

echo "<h1> Welcome to namma Rcb Fan Club </h1>" | sudo tee /var/www/html/index.html
