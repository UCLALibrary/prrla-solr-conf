# To obtain the solr4 image, you must first login to hub.docker.com via 
# `docker login`. You can then build it locally per the instructions at 
# https://github.com/docker-solr/docker-solr4.

FROM solr4

ENV core_dir example/solr/prl
USER solr

RUN mkdir -p ${core_dir}
WORKDIR ${core_dir}

RUN mkdir data
COPY --chown=solr conf conf
COPY --chown=solr core.properties core.properties