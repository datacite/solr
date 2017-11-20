FROM solr:5.5
MAINTAINER Martin Fenner "mfenner@datacite.org"

# Enviroment
ENV SOLR_CORE datacite

WORKDIR /opt/solr/server/solr/
ADD . /opt/solr/server/solr/
USER root
RUN chown -R solr /opt/solr/server/solr
USER $SOLR_USER

# Giving ownership to Solr
RUN chown -R $SOLR_USER:$SOLR_USER /opt/solr/server/solr/$SOLR_CORE
