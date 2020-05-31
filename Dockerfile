FROM alpine:3.11.3

RUN apk --no-cache add python3

COPY hello /hello

RUN cd /hello \
&& rm -fr __pycache__ \
&& python3 -m venv .pyenv \
&& source .pyenv/bin/activate \
&& pip install -r requirements.txt \
&& rm -f requirements.txt

EXPOSE 8080/tcp

ENTRYPOINT ["/hello/start.sh"]