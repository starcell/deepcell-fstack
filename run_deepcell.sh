# TODO : shell arg 처리 방법 알아보기(아래 참고)
# https://systemdesigner.tistory.com/17

# TODO : docker container list 보는 방법 알아보기
#  docker search deepcell
#  docker search --filter=star=3 deepcell
#  docker search -f star=3 deepcell

# 환경 체크 - 필요 소프트웨어들이 잘 설치되었는지 확인(install.sh 설치 여부 확인)

# 아래 코드를 참고하여 완성
# 도움말(사용법)
# 기능 
# 1. 아무런 인자가 없으면, 
# -> 사용법 설명, 자세한 설명은 run_deepcell.sh -h 실행
# -> 디폴트로 deepcell_basic을 실행하시겠습니까? 
#   --> y입력을 받으면 deepcell basic을 받아서 실행

## 도움말 출력하는 함수
help() {
        echo "splt [OPTIONS] FILE"
                echo "    -h         도움말 출력."
                echo "    -a ARG     인자를 받는 opt."
                echo "    -b ARG     인자를 받는 opt2."
                exit 0
}
while getopts "a:b:h" opt
do
case $opt in
a) arg_a=$OPTARG
echo "Arg A: $arg_a"
;;
b) arg_b=$OPTARG
echo "Arg B: $arg_b"
echo "$arg_b"
;;
h) help ;;
?) help ;;
esac
done


# deepcell stack container list 보기
#  docker search deepcell

# 디폴트 컨테이너 실행 - Tensorflow, mnist, jupyter lab

# 