# deepcell-fstack

deepcell fstack은 AI에 필요한 소프트웨어들은 컨테이너로 실행할 수 있도록 준비된 도커 이미지 모음입니다. Deepcel fstack을 이용하는 것은 다음과 같은 이점이 있습니다.
- 딥러닝을 위한 환경을 신속하게 준비할 수 있습니다.
- 쉽게 도커 컨테이너를 활용할 수 있습니다.
- CPU(Intel CPU 최적화 지원)만을 사용하는 환경과 GPU 가속 환경을 모두 사용할 수 있습니다.


# 사용법
---

# 목차
- [시작하기](#start)
  - [CPU 전용 환경](#CPU)
    - [설치](#Installation-cpu)
    - [사용법](#Usage-cpu)
- [태그]](#Tags)
  - [현재 제공되는 태그](#Available-tags)
- [Citation](#Citation)
- [Contributing](#Contributing)
- [Licensing](#Licensing)

---

<a name="start"/>

# 시작하기
## 사전 준비
Intel CPU가 장착된 컴퓨터 : 메모리 16GB이상 권장, SSD 권장  
OS 설치 : [OS 설치 문서](doc/os_install.md)를 보고 Ubuntu 18.04 LTS Desktop을 설치  
참고URL :
 - Download : https://releases.ubuntu.com/bionic/
 - https://wiki.ubuntu.com/BionicBeaver/ReleaseNotes?action=show&redirect=18.04%2FReleaseNotes  

OS update
- upgrade package 설치(조심:20.04로 설치 옵션 나옴. 설치하지 않음)  
- sudo apt upgrade  
- sudo apt update  
   
---
## CPU 전용 환경
## 설치
### 도커 설치
```bash
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
```
```bash
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```
```bash
sudo apt-key fingerprint 0EBFCD88
```
```bash
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```
```bash
sudo apt-get update
```
```bash
sudo apt-get install docker-ce docker-ce-cli containerd.io
```
```bash
sudo docker --version
```
2020/12/14 최신 버전 :  Docker version 20.10.0, build 7287ab3

### 도커 컨테이너 이미지 풀
docker pull continuumio/miniconda3
docker run -i -t continuumio/miniconda3 /bin/bash


### 딥셀스텍 설치 파일 다운로드

작업 디렉토리 준비
  예) 
  mkdir ~/deepcell
  cd ~/deepcell

다운로드
  git clone https://github.com/starcell/deepcell-stack-cpu

설치  
  cd deepcell-stack-cpu  
  ./install.sh cpu

## 딥셀 컨테이너 사용

딥셀 스텍 실행 
  ./run_deepcell.sh