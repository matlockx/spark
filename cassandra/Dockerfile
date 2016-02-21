FROM matlockx/spark:1.6

ADD cassandra-connector.sh /usr/local/bin/
ADD print_config.scala /opt/jobs/

# for downloading the jars run it once:
RUN cassandra-connector.sh localhost /opt/jobs/print_config.scala

ADD jobs  /opt/jobs

ENTRYPOINT ["cassandra-connector.sh"]
