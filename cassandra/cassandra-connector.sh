#!/usr/bin/env sh
set -e

CONNECTOR_VERSION=1.5.0-RC1-s_2.10

if [ "$2" != "" ]; then
   FILE="-i $2"
fi
echo Running spark-shell with cassandra host $1 and: $FILE

spark-shell --packages datastax:spark-cassandra-connector:$CONNECTOR_VERSION --conf spark.cassandra.connection.host=$1 $FILE
