FROM python:alpine

MAINTAINER Jay MOULIN <jaymoulin@gmail.com>

COPY ./compiler.py /bin/compiler.py
COPY ./entrypoint.sh /bin/entrypoint
ENTRYPOINT ["/bin/entrypoint"]
CMD ["/bin/compiler.py"]
