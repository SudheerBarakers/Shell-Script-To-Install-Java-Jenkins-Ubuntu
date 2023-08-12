#!/bin/bash

# Update system packages
sudo apt update
sudo apt upgrade -y

# Install Java (OpenJDK 11 in this example)
sudo apt install openjdk-11-jdk -y

# Add Jenkins repository key and repository
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

# Update packages and install Jenkins
sudo apt update
sudo apt install jenkins -y

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on system boot
sudo systemctl enable jenkins

# Display initial Jenkins admin password
echo "Jenkins initial admin password:"
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
