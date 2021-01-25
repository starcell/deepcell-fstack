# ==================================================================
# 설치 내역
# ------------------------------------------------------------------
# python          3.6.9   (python.org : base container)
# openvino        2021.2  (base container)
# jupyter         latest  (pip)
# jupyterlab      latest  (pip)
# ==================================================================
###
# base image에서 user가 openvino임
###

FROM openvino/ubuntu18_dev:2021.2

LABEL MAINTAINER="Starcell, Inc"

USER root

# ==================================================================
# pip install
# ------------------------------------------------------------------

RUN source /opt/intel/venv_tf2/bin/activate && pip install --upgrade pip

RUN source /opt/intel/venv_tf2/bin/activate && pip install \
        jupyter \
        jupyterlab

# ==================================================================
# docker run user (default) : openvino
# ------------------------------------------------------------------

USER openvino

EXPOSE 8888