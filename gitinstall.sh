#!/bin/bash

echo "Installation of git"

if [ "$(uname)" == "Linux" ];
then 
	echo "this is Linux server and installing git"
        sudo apt update
	sudo apt install -y git
	git --version
elif [ "($uname)" == "Windows" ];
then 
	echo "this is windows server"
	winget install --id Git.Git -e --source winget
	choco install git -y
else
	echo "git not installed"
fi
