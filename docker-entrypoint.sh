#!/bin/bash

export KONG_DATABASE=postgres
export KONG_PG_DATABASE=$(echo $VCAP_SERVICES | jq -r ".postgres[0].credentials.name")
export KONG_PG_HOST=$(echo $VCAP_SERVICES | jq -r ".postgres[0].credentials.host")
export KONG_PG_USER=$(echo $VCAP_SERVICES | jq -r ".postgres[0].credentials.username")
export KONG_PG_PASSWORD=$(echo $VCAP_SERVICES | jq -r ".postgres[0].credentials.password")
export KONG_PG_PORT=$(echo $VCAP_SERVICES | jq -r ".postgres[0].credentials.port")
export KONG_PG_SSL=on

exec /_docker-entrypoint.sh $@
