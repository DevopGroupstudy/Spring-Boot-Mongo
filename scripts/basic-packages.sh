#!/bin/bash

ID_LIKE=$(grep -oP '^ID_LIKE=\K.*' /etc/os-release)

# Check the operating system if its not debain
if [[ $ID_LIKE != "debian"  ]]; then
   # Update package repositories
    sudo yum update -y
    sleep 5
    # Install unzip
    sudo yum install -y unzip
    echo "Installed Unzip"
    sleep 5

    # Install tree
    sudo yum install -y tree
    echo "Installed tree"
    sleep 5

    # Install nano
    sudo yum install -y nano
    echo "Installed nano"
    sleep 5

    #Install vim
    sudo yum install -y vim
    echo "Installed vim"
    sleep 5

else
    # Update package repositories
    sudo apt update -y
    sleep 5

    # Install unzip
    sudo apt install -y unzip
    echo "Instlled unzip"
    sleep 5

    # Install tree
    sudo apt install -y tree
    echo "Installed tree"
    sleep 5

    # Install nano
    sudo apt install -y nano
    echo "Installed nano"
    sleep 5
    exit 
fi