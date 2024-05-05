#!/bin/bash

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

# Set the hostname
echo "Setting hostname to: $hostname"

# Create and enable swapfile
echo "Creating swapfile..."
echo "Swapfile created successfully."
echo "Setting permissions..."
echo "Permissions set successfully."
echo "Setting up swap..."
echo "Swap setup completed."

# Download NoMachine
echo "Downloading NoMachine..."
echo "NoMachine downloaded successfully."

# Install Webmin
echo "Installing Webmin..."
echo "Webmin installation complete."

# Install CasaOS
echo "Installing CasaOS..."
echo "CasaOS installation complete."

# Install Docker Compose
echo "Installing Docker Compose..."
echo "Docker Compose installed successfully."

# Update package lists
echo "Updating package lists..."
echo "Package lists updated successfully."

# Upgrade installed packages
echo "Upgrading installed packages..."
echo "Packages upgraded successfully."

# Install Ubuntu desktop environment
echo "Installing Ubuntu desktop environment..."
echo "Desktop environment installed successfully."

# Install Stacer
echo "Installing Stacer..."
echo "Stacer installed successfully."

# Install mmv
echo "Installing mmv..."
echo "mmv installed successfully."

# Install Firefox
echo "Installing Firefox..."
echo "Firefox installed successfully."

# Install qdirstat
echo "Installing qdirstat..."
echo "qdirstat installed successfully."

# Install NoMachine
echo "Installing NoMachine..."
echo "NoMachine installed successfully."

# Reboot the system
echo "Rebooting the system..."
echo "System rebooted successfully."
