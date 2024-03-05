#!/bin/bash
cd `dirname $0`
cd ../../

source .env

mkdir src

docker compose run --rm app bash -c "
rails _${RAILS_VERSION}_ new . --skip-bundle --skip ${RAILS_NEW_OPTION}
"

sudo chown -R $(id -u):$(id -g) src
