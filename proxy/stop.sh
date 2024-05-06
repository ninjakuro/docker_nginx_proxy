#!/bin/bash

docker compose -f ./docker-compose.yml down
docker compose -f ../web/docker-compose.yml down
docker compose -f ../api/docker-compose.yml down
docker network rm mpc-network
