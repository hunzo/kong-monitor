#!/bin/bash

kongdb=kong
kongadb=konga_db
kong_version=kong:3.0.0-alpine

docker compose exec -t kong-database pg_dump -c --username=kong --dbname=$kongdb > dump_"$kongdb"_"$kong_version"_`date +%Y-%m-%d`.sql
docker compose exec -t kong-database pg_dump -c --username=kong --dbname=$kongadb > dump_"$kongadb"_`date +%Y-%m-%d`.sql
