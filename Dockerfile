FROM python:alpine

MAINTAINER Jay MOULIN <jaymoulin@gmail.com>

RUN pip install google-closure-compiler-api
COPY ./entrypoint.sh /bin/entrypoint
ENTRYPOINT ["/bin/entrypoint"]
CMD ["google-closure-compiler"]
