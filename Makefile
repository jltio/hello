SHELL := /bin/sh

all: build run

build: clean
	docker build . -t hello:latest

run:
	docker run --rm -ti hello:latest

clean:
	rm -fr hello/__pycache__