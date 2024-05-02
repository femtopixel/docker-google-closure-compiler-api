VERSION ?= 0.1.5
CACHE ?= --no-cache=1

.PHONY: docker build-docker publish-docker
test: install
	twine upload -r testpypi dist/*
publish: install
	twine upload dist/*
install: clean check
	sudo python3 setup.py sdist
check:
	python3 setup.py check --restructuredtext
build:
	mkdir -p build
dist:
	mkdir -p dist
clean: build dist
	sudo rm -Rf build/*
	sudo rm -Rf dist/*

docker: build-docker publish-docker
build-docker:
	docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64,linux/386,linux/arm/v6 ${PUSH} --build-arg VERSION=${VERSION} --tag femtopixel/google-closure-compiler --tag femtopixel/google-closure-compiler:${VERSION} ${CACHE} .
publish-docker:
	PUSH=--push CACHE= make build-docker

