#!/bin/bash

# Update package list and install dependencies
sudo apt update
sudo apt install -y curl software-properties-common
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install nodejs -y 
sudo apt install git -y

# Wings

git clone https://github.com/achul123/skyportd.git
cd skyportd 
npm install

echo_message "* cd skyportd"

echo_message "* paste your configure code"

echo_message "* pm2 start ."
