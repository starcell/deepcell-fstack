# ==================================================================
# 설치 내역/추가설치
# ------------------------------------------------------------------
# ubuntu 18.04
# python        3.6.9   (tensorflow)
# tensorflow    2.3.1   (tensorflow gpu)
# jupyter       latest  (6.1.5)
# ------------------------------------------------------------------
# pandas        latest  (pip)
# seaborn       latest  (pip)
# graphviz      latest  (pip)
# pydot         latest  (pip)
# jupyter lab   latest  (pip)
# ==================================================================

FROM tensorflow/tensorflow:2.3.1-gpu-jupyter

LABEL MAINTAINER="Starcell, Inc"

RUN APT_INSTALL="apt-get install -y --no-install-recommends" && \
    PIP_INSTALL="pip install" && \

    apt-get update && \
    pip install --upgrade pip && \

# ==================================================================
# fonts
# ------------------------------------------------------------------

    $APT_INSTALL \
        fonts-dejavu-core && \

# ==================================================================
# pydot, graphviz
# ------------------------------------------------------------------

    $APT_INSTALL \
        graphviz \
        python3-pydot && \
# ==================================================================
# conda install
# ------------------------------------------------------------------

    $PIP_INSTALL \
        pandas \
        seaborn \
        jupyterlab \
        && \

# ==================================================================
# config & cleanup
# ------------------------------------------------------------------
    ldconfig && \
    apt-get clean && \
    apt-get autoremove && \
    rm -rf /var/lib/apt/lists/* /tmp/* ~/* 

EXPOSE 8888 6006