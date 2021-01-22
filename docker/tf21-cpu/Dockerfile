# ==================================================================
# 설치 내역 / 추가 설치
# ------------------------------------------------------------------
# ubuntu 18.04
# python        3.8.5   (default in conda)
# ------------------------------------------------------------------
# fonts         fonts-dejavu-core
# tensorflow    2.1     (conda)
# pandas        latest  (conda)
# matplotlib    latest  (conda)
# seaborn       latest  (conda)
# graphviz      latest  (conda)
# pydot         latest  (conda)
# jupyter       latest  (6.1.5, conda)
# jupyterlab    latest  (conda)
# ==================================================================

FROM continuumio/miniconda3:4.7.12

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
        tensorflow==2.1 \
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

EXPOSE 8888 6006