```
㈜스타셀

Deepcell

Deepcellstack install - Ubuntu 18.04 desktop

Starcell, all right reserved
2020- 07- 15
```

 
# Ubuntu 18.04 LTS - Bionic Beaver
18.04 LTS는 여러 기능이 개선되었고, 새로 출시되었습니다. 릴리스 코드이름은 **"Bionic Beaver"** 입니다.  

* 강화된 보안
* GNOME 3.28 채택
* 다양한 아이콘 및 컬러 이모티콘 지원
* 새로운 Linux Kernel Version 4.15 적용
* 2023년까지 Ubuntu 18.04 LTS 지원 및 업데이트에 대한 신뢰성
* "최소 설치" 옵션 추가
* 향상된 부팅 속도


## Step 1. 설치 요구사양
* 2 GHz 이상의 듀얼코어 프로세서
* 2 GB 이상의 시스템 메모리
* 25 GB 이상의 저장공간
* DVD 또는 USB 설치미디어
* 기타 소프트웨어 및 업데이트를 위한 인터넷 연결(선택)


## Step 2. 설치파일 다운로드
Link : https://releases.ubuntu.com/bionic/  
**"Desktop image" >  "64-bit PC (AMD64) desktop image"** 클릭.  
**“ubuntu-18.04.4-desktop-amd64.iso"** 다운로드 합니다.  


## Step 3. OS설치 미디어 준비 및 제작 - (USB stick)
Ubuntu 18.04 LTS 설치하기 위해 USB 혹은 DVD 미디어가 필요합니다.  
여기서는 Windows 환경에서 설치용 USB stick으로 진행합니다.

(DVD미디어 사용은 https://help.ubuntu.com/community/BurningIsoHowto 참조하세요.)

* 용량 8GB 이상의 USB 메모리 준비.
* 다운로드받은 ISO 설치파일을 USB에 담기  
(상세내용은 아래 Link를 참조합니다.)  
https://rufus.ie
* 설치할 서버 혹은 PC의 부팅순서를 "USB BOOT" 모드를 첫번째로 변경합니다.


## Step 4. Ubuntu 18.04 LTS 설치
Ubuntu 18.04 설치용 USB 메모리로 부팅에 성공하면 다음과 같은 과정으로 설치를 진행합니다.  


### 1)	설치모드 선택
*"Install Ubuntu"* 선택합니다.
*  Try Ubuntu without installing
* **Install Ubuntu**
* OEM install (for manufacturers)
* Check disc for defects


### 2)	언어  **"한국어"**  선택

### 3)	키보드 레이아웃 **"한국어 > 한국어 - 한국어(101/104키 호환)"** 선택

### 4)	Wi-Fi 연결
인터넷에 연결된 상태가 아니라면 Wi-Fi를 통해 인터넷 연결을 물어봅니다.  
인터넷에 연결되어 있지 않더라도 18.04 LTS 설치에는 영향이 없습니다.  
다만,  5) 기타설정 **“Unbuntu 설치 중 업데이트 다운로드”** 항목이 비활성화 될 것입니다. 

### 5)	업데이트 및 기타 소프트웨어
어떤 앱을 처음부터 설치하시겠습니까?	  일반설치  선택  
* 일반설치 : 웹 브라우저, 유틸리티, 오피스 소프트웨어 …  
* 최소설치 : 웹 브라우저 및 기본 유틸리티

기타설정
* "Ubuntu 설치 중 업데이트 다운로드" 선택
* "그래픽과 Wi-Fi 하드웨어 그리고 추가 미디어 포맷을 위한 서드파티 소프트웨어 설치" 선택 


### 6)	설치형식
디스크의 논리 파티션 및 크기를 생성하는 단계입니다. 파티션 지정없이 기본 옵션으로 진행합니다.  
**"디스크를 지우고 Ubuntu 설치"** 선택 후 진행


### 7)	지역 선택
**"Seoul"** 선택


### 8)	사용자 생성
* 이름 : **deepcell**
* 컴퓨터 이름 : **deepcellstack**
* 사용자 이름 : **deepcell**
* 암호선택 / 암호확인
* “로그인할때 암호입력” 선택


### 9)	설치완료 메시지와 함께 재부팅을 진행합니다. (USB 메모리를 제거합니다.)
