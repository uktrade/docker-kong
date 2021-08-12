FROM docker.io/library/kong:ubuntu

# Cloudfoundry will use this port
ENV PORT 8000

USER root

sudo apt install jq
RUN apt update && \
    apt install jq && \
    mv /docker-entrypoint.sh _docker-entrypoint.sh && \
    copy docker-entrypoint.sh /docker-entrypoint.sh

USER kong
