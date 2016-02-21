#!/usr/bin/env bash
set -e

IMAGE=matlockx/spark-cassandra:1.6

#docker build --no-cache --pull=true --rm -t $IMAGE .
docker build --pull=false --rm -t $IMAGE .
