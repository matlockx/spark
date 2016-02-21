FROM matlockx/java:8u74b02

ENV SPARK_VERSION=1.6.0
ENV HADOOP_VERSION=2.6
ENV PATH=$PATH:/opt/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION/bin

RUN cd /tmp && \
    curl -L http://d3kbcqa49mib13.cloudfront.net/spark-$SPARK_VERSION-bin-hadoop$HADOOP_VERSION.tgz -o /tmp/spark.tgz && \
    tar xvf spark.tgz -C /opt && \
    rm /tmp/spark.tgz
