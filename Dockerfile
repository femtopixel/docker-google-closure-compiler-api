FROM python:alpine

ARG TARGETPLATFORM
ARG VERSION
LABEL maintainer="Jay MOULIN <https://jaymoulin.me/femtopixel/docker-google-closure-compiler-api>"
LABEL version=${VERSION}-${TARGETPLATFORM}

RUN pip install google-closure-compiler-api
COPY ./entrypoint.sh /bin/entrypoint
ENTRYPOINT ["/bin/entrypoint"]
CMD ["google-closure-compiler"]
