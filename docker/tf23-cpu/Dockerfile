# ==================================================================
# 설치 내역
# ------------------------------------------------------------------
# fonts         fonts-dejavu-core
# python        3.8.5   (default in conda)
# tensorflow    2.3     (conda)
# pandas        latest  (conda)
# matplotlib    latest  (conda)
# seaborn       latest  (conda)
# graphviz      latest  (conda)
# pydot         latest  (conda)
# jupyter       latest  (conda)
# jupyterlab    latest  (conda)
# ==================================================================

FROM continuumio/miniconda3:4.9.2

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
        tensorflow==2.3 \
        pandas \
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
    mkdir /home/appuser 

# ==================================================================
# docker run user
# ------------------------------------------------------------------
RUN groupadd -g 1000 appuser && \
    useradd -r -u 1000 -g appuser appuser && \
    chown -R 1000:1000 /home/appuser

USER appuser

EXPOSE 8888 6006