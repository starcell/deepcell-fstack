# ==================================================================
# 설치 내역
# ------------------------------------------------------------------
# miniconda     latest
# python        3.8.5   (default in conda)
# jupyter       latest  (conda)
# jupyterlab    latest  (conda)
# ==================================================================

FROM openvino/ubuntu18_runtime:2021.2

LABEL MAINTAINER="Starcell, Inc"

RUN APT_INSTALL="apt-get install -y --no-install-recommends" && \
    CONDA_INSTALL="conda install" && \

    apt-get update && \

    $APT_INSTALL \
        miniconda && \

# ==================================================================
# conda install
# ------------------------------------------------------------------

    conda update --all && \

    $CONDA_INSTALL \
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

EXPOSE 8888