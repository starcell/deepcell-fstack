# ==================================================================
# 설치 내역
# ------------------------------------------------------------------
# python          3.6.9   (python.org : base container)
# openvino        2021.2  (base container)
# jupyter         latest  (pip)
# jupyterlab      latest  (pip)
# ==================================================================

FROM openvino/ubuntu18_dev:2021.2

LABEL MAINTAINER="Starcell, Inc"

RUN APT_INSTALL="apt-get install -y --no-install-recommends" && \
    PIP_INSTALL="pip install" && \

    apt-get update && \
    pip install --upgrade pip && \

# ==================================================================
# pip install
# ------------------------------------------------------------------

    $PIP_INSTALL \
        jupyter \
        jupyterlab \
        && \

# ==================================================================
# config & cleanup
# ------------------------------------------------------------------
    ldconfig && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* ~/* && \

# ==================================================================
# docker run user (default) : openvino
# ------------------------------------------------------------------

EXPOSE 8888