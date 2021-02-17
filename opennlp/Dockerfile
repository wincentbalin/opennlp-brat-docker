FROM ubuntu:16.04
ENV OPENNLP_VERSION 1.9.2
ENV OPENNLP_ARCHIVE_URL https://archive.apache.org/dist/opennlp/opennlp-${OPENNLP_VERSION}/apache-opennlp-${OPENNLP_VERSION}-bin.tar.gz
#ENV OPENNLP_ARCHIVE_URL https://downloads.apache.org/opennlp/opennlp-${OPENNLP_VERSION}/apache-opennlp-${OPENNLP_VERSION}-bin.tar.gz
RUN apt-get update && \
    apt-get install -y default-jre wget && \
    wget -q -O - ${OPENNLP_ARCHIVE_URL} | tar zxvfC - /opt && \
    mv /opt/apache-opennlp-${OPENNLP_VERSION} /opt/opennlp
WORKDIR /data
COPY en-ner-person.bin ner-model.bin
ENTRYPOINT ["/opt/opennlp/bin/brat-annotation-service", "-serverPort", "8999", "/data/ner-model.bin"]
