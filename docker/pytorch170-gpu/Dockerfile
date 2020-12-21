# ==================================================================
# 설치 내역 / 추가 설치
# ------------------------------------------------------------------
# ubuntu 18.04
# python        3.8.3   (default in conda)
# ------------------------------------------------------------------
# fonts         fonts-dejavu-core
# pytorch gpu   1.7.0   (conda)
# torchvision   0.8.0   (conda)
# pandas        latest  (conda)
# matplotlib    latest  (conda)
# seaborn       latest  (conda)
# graphviz      latest  (conda)
# pydot         latest  (conda)
# jupyter       latest  (6.1.5, conda)
# jupyterlab    latest  (conda)
# ==================================================================

FROM pytorch/pytorch:1.7.0-cuda11.0-cudnn8-runtime

LABEL MAINTAINER="Starcell, Inc"

RUN APT_INSTALL="apt-get install -y --no-install-recommends" && \
    CONDA_INSTALL="conda install" && \

    apt-get update && \
    conda update --all && \

# ==================================================================
# fonts
# ------------------------------------------------------------------

    $APT_INSTALL \
        fonts-dejavu-core && \

# ==================================================================
# conda install
# ------------------------------------------------------------------

    $CONDA_INSTALL \
        pandas \
        scikit-learn \
        matplotlib \
        seaborn \
        graphviz \
        pydot \
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
    mkdir /home/appuser && \
    mkdir /notebook 

# ==================================================================
# docker run user
# ------------------------------------------------------------------
RUN groupadd -g 1000 appuser && \
    useradd -r -u 1000 -g appuser appuser && \
    chown -R 1000:1000 /home/appuser

USER appuser

EXPOSE 8888