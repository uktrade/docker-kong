FROM docker.io/library/kong:ubuntu

# Cloudfoundry will use this port
ENV PORT 8000

USER root

RUN apt update && \
    apt install -y jq && \
    mv /docker-entrypoint.sh /_docker-entrypoint.sh
    
COPY docker-entrypoint.sh /docker-entrypoint.sh

USER kong
