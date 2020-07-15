# deepcell-stack-cpu

deepcell stack은 
인텔 CPU에 최적화된 딥러닝용 컨테이너(Intel CPU optimized container for Deep learning)

## 구성
H/W : Intel CPU(Xeon, Core i series) 장착 컴퓨터(서버, 데스크탑, 노트북, 미니피씨)

OS : Ubuntu 18.04 LTS(Bionic Beaver) - Desktop

Utils
* git
* wget
* curl
* vim
* emacs
* tmux
* htop

Container Engine : docker

Internet Browser : Chrome


# 사용법

## 사전 준비
Intel CPU가 장착된 컴퓨터 : 메모리 16GB이상 권장, SSD 권장
OS 설치 : Ubuntu 18.04 LTS Desktop을 설치
 - Download : https://releases.ubuntu.com/bionic/
 - https://wiki.ubuntu.com/BionicBeaver/ReleaseNotes?action=show&redirect=18.04%2FReleaseNotes 참고

## 설치
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