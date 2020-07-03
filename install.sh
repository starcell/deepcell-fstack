#!/usr/bin/env bash

### for ubuntu 18.04

## 1. library install
sudo apt upate

sudo apt-get install -y \
apt-transport-https \
ca-certificates \
curl \
gnupg-agent \
software-properties-common

## 2. chrome browser install
# 인증키 등록
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# 크롬 PPA(Personal Package Archive) 추가
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

# 추가한 크롬 PPA 삭제
sudo rm -rf /etc/apt/sources.list.d/google.list
sudo apt-get clean

## 3. docker install
#<https://docs.docker.com/engine/install/ubuntu/>

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
