#!/bin/bash
cd `dirname $0`
cd ../

docker compose down
docker compose build