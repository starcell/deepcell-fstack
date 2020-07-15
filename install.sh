#!/usr/bin/env bash

### install deepcell stack for ubuntu 18.04

sudo apt upate

# chrome browser 설치를 위한 인증키 등록
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# 크롬 PPA(Personal Package Archive) 추가
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt update
# sudo apt-get install google-chrome-stable # in requrements.txt에 포함

## docker install 준비
#<https://docs.docker.com/engine/install/ubuntu/>

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
"deb [arch=amd64] https://download.docker.com/linux/ubuntu \
$(lsb_release -cs) \
stable"
sudo apt update

# apt install로 requrements.txt에 있는 소프트웨어들을 설치
# https://www.monolune.com/installing-apt-packages-from-a-requirements-file/

sudo sed 's/#.*//' requirements.txt | xargs sudo apt install -y 
sudo apt update

# 추가한 크롬 PPA 삭제
sudo rm -rf /etc/apt/sources.list.d/google.list
sudo apt clean
