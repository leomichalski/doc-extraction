# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/minimal-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Jupyter Project <jupyter@googlegroups.com>"

#USER root
#RUN apt-get update && apt-get install -yq --no-install-recommends \

USER $NB_UID
COPY requirements.txt /tmp/
RUN pip install --default-timeout=15000 --requirement /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER