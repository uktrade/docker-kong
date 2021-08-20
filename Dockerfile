FROM docker.io/library/kong:ubuntu

# Cloudfoundry will use this port
ENV PORT 8000

USER root

RUN apt update && \
    apt install -y jq wget # && \
    #mv /docker-entrypoint.sh /_docker-entrypoint.sh

RUN wget https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem
    
#COPY docker-entrypoint.sh /docker-entrypoint.sh

#RUN chmod +x /docker-entrypoint.sh && chown kong /docker-entrypoint.sh

USER kong
