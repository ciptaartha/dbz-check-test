#!/bin/bash

source ./env.sh

docker compose -f ${DC_FILE} exec -u ${TARGET_USER} ${TARGET_NAME} \
    psql -c "drop schema inventory cascade; create schema inventory;"

# docker compose -f ${DC_FILE} exec -e MYSQL_PWD=${TARGET_PASSWORD} ${TARGET_NAME} \
#     mysql -u${TARGET_USER} -e \
#     "drop database inventory; create database inventory;"

