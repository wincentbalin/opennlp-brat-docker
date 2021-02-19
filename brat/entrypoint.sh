#!/bin/bash

# Redirect ports
nohup socat tcp-l:80,fork,reuseaddr tcp:127.0.0.1:8001 &

# Start server
/opt/brat/standalone.py
