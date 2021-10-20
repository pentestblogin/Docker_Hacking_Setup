#!/bin/bash 

 sudo apt-get update;
 sudo apt-get install apt-transport-https;
 sudo apt-get install ca-certificates;
 sudo apt-get install curl 2>/dev/null;
 sudo apt-get install gnupg 2>/dev/null;
 sudo apt-get install lsb-release;
 sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;
 sudo  echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;
 sudo apt-get update;
 sudo apt-get install docker-ce docker-ce-cli containerd.io;
 sudo docker run hello-world;
