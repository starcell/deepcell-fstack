# deepcell-fstack

deepcell fstack은 AI에 필요한 소프트웨어들을 컨테이너로 실행할 수 있도록 준비된 도커 컨테이너 이미지 모음입니다. deepcel fstack을 이용하면 다음과 같은 이점이 있습니다.
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
- [컨테이너 이미지](#Images)
  - [현재 제공되는 이미지들](#Available-images)
- [Citation](#Citation)
- [Contributing](#Contributing)
- [Licensing](#Licensing)

---

<a name="start"/>

# 시작하기

<a name="CPU"/>

## CPU 전용 환경

<a name="Installation-cpu"/>

## 설치
### 사전 준비
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

### 사용자 계정
#### UID 1000, GID 1000   
ubuntu os를 설치할 때 만든 사용자의 UID와 GID는 모두 1000이다. 아래와 같이 id 명령으로 확인할 수 있다.
```bash
id
```
이 문서에서는 사용자 계정과 그룹을 deepcell로 만들어서 사용하며 이 deepcell 계정의 UID와 GID는 1000이다.
fstack의 컨테이너 이미지들은 UID 1000으로 실행되도록 빌드되어 있으므로 사용자 UID 1000인 계정으로 실행하여야 한다.

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
- 2020/12/14 최신 버전 :  Docker version 20.10.0, build 7287ab3

### 도커 사용자 권한 설정
일반 사용자 계정(현재 사용중인 계정, UID는 1000)으로 docker를 실행하기 위해 아래 명령을 실행하여 사용자 계정을 docker group에 추가 한다.   
```bash
sudo usermod -a -G docker $USER
sudo service docker restart
```

*** 이미 root로 docker를 실행한 후에는 root가 생성한 디렉토리와 파일에 접근권한이 없어서 오류가 발생한다.   
*** 이 때는 오류가 나는 파일과 디렉토리의 소유를 변경한다.

<a name="Usage-cpu"/>

## 사용법
### 도커 컨테이너 이미지 내려받기(pull)
```bash
docker pull starcell/fstack-tf115-cpu
```

### 도커 실행
jupyter notebook을 파일을 컨테이너와 호스트에서 공동으로 접근할 수 있도록 아래와 같이 디렉토리를 만들고 볼륨 마운트하여 사용한다.
```bash
mkdir ~/notebook
```
jupyter notebook을 사용하기 위한 명령을 아래와 같이 실행한다.
```bash
docker run --user 1000 -it -v ~/notebook:/home/appuser -p 8888:8888 starcell/fstack-tf115-cpu jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token= --notebook-dir='/home/appuser'
```
또는, jupyter lab 사용하기 위한 명령을 아래와 같이 실행한다.
```bash
docker run --user 1000 -it -v ~/notebook:/home/appuser -p 8888:8888 starcell/fstack-tf115-cpu jupyter lab --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token= --notebook-dir='/home/appuser'
```

### jupyter notebook(또는 jupyter lab) 사용
웹브라우저(chrome 브라우저를 권장)를 열고 host의 IP와 port번호를 입력한다.(아래 URL참고)
- URL : <host IP>:8888   

jupyter notebook에서 사용하는 기본 디렉토리는 호스트의 ~/notebook에 마운트 되어 있으므로 ~/notebook에 필요한 파일들을 만들거나 복사하여 사용할 수 있다.(사용자 권한 확인)
   
---

<a name="Images"/>

# 컨테이너 이미지

<a name="Available-images"/>

## 현재 지원되는 컨테이너 이미지들
.                                             | CPU-only / Python 3.6                    | GPU / Python 3.6
:-------------------------------------------: | :--------------------------------------: | :-------------------------------:
 [TensorFlow](http://www.tensorflow.org)      | `fstack-tf115-cpu`                       | `fstack-tf115-gpu`