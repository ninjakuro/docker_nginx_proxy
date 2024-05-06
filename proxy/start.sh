#!/bin/bash

docker network create mpc-network
docker compose -f ../web/docker-compose.yml up --build -d
docker compose -f ../api/docker-compose.yml up --build -d
docker compose -f ./docker-compose.yml up -d
