#!/bin/bash
cd `dirname $0`
cd ../../

source .env

mkdir src

docker compose run --rm app bash -c "
rails _${RAILS_VERSION}_ new . --database mysql --skip-bundle --skip
"

sudo chown -R $(id -u):$(id -g) src
