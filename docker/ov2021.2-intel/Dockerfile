# ==================================================================
# 설치 내역
# ------------------------------------------------------------------
# python          3.6.9   (python.org : base container)
# openvino        2021.2  (base container)
# jupyter         latest  (pip)
# jupyterlab      latest  (pip)
# matplotlib
# 
# 전체 크기가 7.8GB정도 됨.
# ==================================================================
###
# base image에서 user가 openvino임
###

FROM openvino/ubuntu18_dev:2021.2

LABEL MAINTAINER="Starcell, Inc"

USER root

RUN apt-get update

# ==================================================================
# pip install
# ------------------------------------------------------------------

RUN source /opt/intel/venv_tf2/bin/activate && pip install --upgrade pip

RUN source /opt/intel/venv_tf2/bin/activate && pip install \
        jupyter \
        jupyterlab \
        matplotlib \
        pillow \
        numpy

# ==================================================================
# config & cleanup
# ------------------------------------------------------------------

RUN ldconfig && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* ~/* && \
    mkdir /notebook 

# ==================================================================
# docker run user (default) : openvino
# ------------------------------------------------------------------

USER openvino

ENV SHELL /bin/bash

RUN printf "#! /bin/bash \n" > ${HOME}/start_jupyter.sh; \
    printf "source ${INTEL_OPENVINO_DIR}/bin/setupvars.sh \n" >> ${HOME}/start_jupyter.sh; \
    printf "source ${VENV_TF2}/bin/activate \n" >> ${HOME}/start_jupyter.sh; \
    printf "jupyter lab --no-browser --ip=0.0.0.0 --allow-root  --NotebookApp.token= --notebook-dir='/notebook' \n" >> ${HOME}/start_jupyter.sh; \
    chmod 755 ${HOME}/start_jupyter.sh

EXPOSE 8888

ENTRYPOINT ["/bin/bash", "-c"]
CMD ["${HOME}/start_jupyter.sh"]