# ==================================================================
# 설치 내역
# ------------------------------------------------------------------
# miniconda     latest
# python        3.7.9   (conda update)
# openvino      2021.2  (conda)
# jupyter       latest  (6.1.5, conda)
# jupyterlab    latest  (conda)
# ==================================================================

FROM continuumio/miniconda3:4.7.12

LABEL MAINTAINER="Starcell, Inc"

RUN apt-get update && \
    conda update --all && \
    conda install openvino-ie4py-ubuntu18 -c intel && \
    conda install jupyter && \
    conda install jupyterlab && \

# ==================================================================
# config & cleanup
# ------------------------------------------------------------------
    ldconfig && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* ~/* && \
    mkdir /home/appuser 

# ==================================================================
# docker run user
# ------------------------------------------------------------------
RUN groupadd -g 1000 appuser && \
    useradd -r -u 1000 -g appuser appuser && \
    chown -R 1000:1000 /home/appuser

USER appuser

EXPOSE 8888