# ==================================================================
# 설치 내역
# ------------------------------------------------------------------
# fonts         fonts-dejavu-core
# python        3.7.4   (default in conda)
# tensorflow    1.15    (conda)
# keras         latest  (conda)
# pandas        latest  (conda)
# matplotlib    latest  (conda)
# seaborn       latest  (conda)
# graphviz      latest  (conda)
# pydot         latest  (conda)
# jupyter       latest  (conda)
# jupyterlab    latest  (conda)
# ==================================================================

FROM continuumio/miniconda3:4.7.12
RUN APT_INSTALL="apt-get install -y --no-install-recommends" && \
    CONDA_INSTALL="conda install" && \

    apt-get update && \

# ==================================================================
# fonts
# ------------------------------------------------------------------

    $APT_INSTALL \
        apt-utils \
        fonts-dejavu-core && \

# ==================================================================
# conda install
# ------------------------------------------------------------------

    $CONDA_INSTALL \
        tensorflow==1.15 \
        keras \
        pandas \
        matplotlib \
        seaborn \
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
    rm -rf /var/lib/apt/lists/* /tmp/* ~/*

EXPOSE 8888 6006