# To obtain the solr4 image, you must first login to hub.docker.com via 
# `docker login`. You can then build it locally per the instructions at 
# https://github.com/docker-solr/docker-solr4.

FROM solr4

ARG CORE_DIR=example/solr/prl
ARG CORE_NAME=prl

USER solr

RUN mkdir -p ${CORE_DIR}
WORKDIR ${CORE_DIR}

RUN mkdir data
RUN echo "name=${CORE_NAME}" > core.properties

COPY --chown=solr conf conf