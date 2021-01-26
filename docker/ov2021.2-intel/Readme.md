### docker container를 root로 실행하기(컨테이너 내부 사용자를 root로)
```
docker run -itu root:root --rm --device=/dev/ion:/dev/ion -v /var/tmp:/var/tmp --device /dev/dri:/dev/dri --device-cgroup-rule='c 189:* rmw' -v /dev/bus/usb:/dev/bus/usb <image_name>
/bin/bash -c "apt update && apt install sudo && deployment_tools/demo/demo_security_barrier_camera.sh -d CPU -sample-options -no_show"
```