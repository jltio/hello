SHELL := /bin/sh

all: build run

build: clean
	docker build --file Dockerfile --tag hello:latest .

run:
	docker run --name hello --rm --tty --interactive --publish 8080:8080 hello:latest

clean:
	rm -fr hello/__pycache__