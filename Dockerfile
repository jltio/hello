FROM alpine:3.11.3

WORKDIR /hello

RUN apk --no-cache add python3

COPY hello/requirements.txt /hello/requirements.txt

RUN rm -fr __pycache__ \
&& python3 -m venv .pyenv \
&& source .pyenv/bin/activate \
&& pip install -r requirements.txt

COPY hello /hello

EXPOSE 8080/tcp

ENTRYPOINT ["/hello/start.sh"]