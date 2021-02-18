#!/bin/sh

# Redirect ports
nohup socat tcp-l:8999,fork,reuseaddr tcp:127.0.0.1:8080 &

# Start service
/opt/opennlp/bin/brat-annotation-service ner-model.bin
