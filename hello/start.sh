#!/bin/sh
cd /hello
. .pyenv/bin/activate
gunicorn -b 0.0.0.0:8080 -w 4 hello:app