FROM ubuntu:16.04
LABEL maintainer="wincent.balin@gmail.com"
ENV BRAT_VERSION "v1.3_Crunchy_Frog"
ENV BRAT_USER "editor"
ENV BRAT_PASSWORD "annotate"
ENV BRAT_ADMIN_EMAIL "admin@example.com"
RUN apt-get update && \
    apt-get install -y wget iputils-ping python socat
RUN wget -q -O - http://weaver.nlplab.org/~brat/releases/brat-${BRAT_VERSION}.tar.gz | \
    tar zxvfC - /opt && \
    mv /opt/brat-${BRAT_VERSION} /opt/brat
WORKDIR /opt/brat
RUN echo ${BRAT_USER} > config.txt && \
    echo ${BRAT_PASSWORD} >> config.txt && \
    echo ${BRAT_ADMIN_EMAIL} >> config.txt && \
    ./install.sh -u < config.txt && \
    rm config.txt && \
    chown -R nobody data/ work/
WORKDIR /
COPY entrypoint.sh .
RUN chmod 0755 entrypoint.sh
USER nobody
ENTRYPOINT "/entrypoint.sh"