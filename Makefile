SHELL := /bin/sh

all: build run

build: clean
	docker build . -t hello:latest

run:
	docker run --rm -ti -p 8080:8080 hello:latest

clean:
	rm -fr hello/__pycache__