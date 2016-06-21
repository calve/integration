FROM gliderlabs/alpine:3.3

RUN apk update && \
    apk add --update openjdk8 wget tar supervisor

# Download Fuseki:
ENV FUSEKI_VERSION 2.4.0
ENV FUSEKI_HOME /usr/lib/fuseki
RUN wget http://ftp.halifax.rwth-aachen.de/apache/jena/binaries/apache-jena-fuseki-$FUSEKI_VERSION.tar.gz && \
    tar -zxvf apache-jena-fuseki-$FUSEKI_VERSION.tar.gz && \
    rm apache-jena-fuseki-$FUSEKI_VERSION.tar.gz && \
    mv apache-jena-fuseki-$FUSEKI_VERSION $FUSEKI_HOME
ENV PATH $PATH:FUSEKI_HOME/bin

# Persist data of Fuseki server:
VOLUME /data
# Persist log files:
VOLUME $FUSEKI_HOME/run

# Open default port of Fuseki:
EXPOSE 3030

COPY ./config.ttl /config.ttl
COPY ./start.sh /start.sh
CMD ["/bin/sh", "/start.sh"]