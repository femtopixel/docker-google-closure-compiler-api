VERSION ?= 0.1.5
CACHE ?= --no-cache=1
FULLVERSION ?= 0.1.5
archs ?= amd64 i386 arm64v8 arm32v6

.PHONY: docker build-docker publish-docker latest
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
docker: build-docker publish-docker latest
build-docker:
	cp /usr/bin/qemu-*-static .
	$(foreach arch,$(archs), \
		cat Dockerfile | sed "s/FROM python:alpine/FROM ${arch}\/python:alpine/g" > .Dockerfile; \
		docker build -t femtopixel/google-closure-compiler:${VERSION}-$(arch) -f .Dockerfile ${CACHE} .;\
	)
publish-docker:
	docker push femtopixel/google-closure-compiler
	cat manifest.yml | sed "s/\$$VERSION/${VERSION}/g" > manifest.yaml
	cat manifest.yaml | sed "s/\$$FULLVERSION/${FULLVERSION}/g" > manifest2.yaml
	mv manifest2.yaml manifest.yaml
	manifest-tool push from-spec manifest.yaml
latest: build-docker
	FULLVERSION=latest VERSION=${VERSION} make publish-docker

