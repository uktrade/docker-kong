#!/bin/bash

export KONG_PG_HOST=$(echo $VCAP_SERVICES | jq ".postgres[0].credentials.host")
export KONG_DATABASE=$(echo $VCAP_SERVICES | jq ".postgres[0].credentials.name")
export KONG_PG_USER=$(echo $VCAP_SERVICES | jq ".postgres[0].credentials.username")
export KONG_PG_PASSWORD=(echo $VCAP_SERVICES | jq ".postgres[0].credentials.password")

exec /_docker-entrypoint.sh $@
