#!/bin/bash

# Clear the screen
clear

# Display the ASCII art banner
cat << "EOF"
  __  __   __  __          _____ _    _ _____            ____ _____ 
 |  \/  | |  \/  |   /\   / ____| |  | |  __ \     /\   |  _ \_   _|
 | \  / | | \  / |  /  \ | |  __| |__| | |__) |   /  \  | |_) || |  
 | |\/| | | |\/| | / /\ \| | |_ |  __  |  _  /   / /\ \ |  _ < | |  
 | |  | |_| |  | |/ ____ \ |__| | |  | | | \ \  / ____ \| |_) || |_ 
 |_|  |_(_)_|  |_/_/    \_\_____|_|  |_|_|  \_\/_/    \_\____/_____|
                                                                    
                                                                    
EOF

# Prompt for hostname
read -p "Enter the hostname for the machine: " hostname

# Delay for 6 seconds
sleep 6s

# Set the hostname
sudo hostnamectl set-hostname $hostname

# Create and enable swapfile
sudo dd if=/dev/zero of=/swapfile bs=1M count=2048 status=progress
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab

# Download NoMachine
sudo wget https://download.nomachine.com/download/8.4/Linux/nomachine_8.4.2_1_amd64.deb

# Install Webmin
curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh
sh setup-repos.sh
sudo apt-get install webmin --install-recommends -y

# Install CasaOS
curl -fsSL https://get.casaos.io | sudo bash

# Install Docker Compose
sudo apt install docker-compose -y

# Update package lists
sudo apt-get update 
# Upgrade installed packages
sudo apt-get upgrade -y
# Install Ubuntu desktop environment
sudo apt-get install ubuntu-desktop -y
# Install Stacer
sudo apt-get install stacer -y
# Install mmv
sudo apt-get install mmv -y
# Install Firefox
sudo apt-get install firefox -y
# Install qdirstat
sudo apt-get install qdirstat -y

# Install NoMachine
sudo apt install -f ./nomachine_8.4.2_1_amd64.deb

# Reboot the system
sudo reboot
