#!/bin/bash
sudo apt install openjdk-8-jdk -y

sudo apt install maven -y

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y
sudo sysemctl start jenkins
sudo systemctl status jenkins
sudo systemctl restart jenkins
sudo systemctl enable jenkins ( Bootup start)
