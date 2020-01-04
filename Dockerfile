FROM python:alpine3.11 as builder

COPY qemu-*-static /usr/bin/

FROM builder

LABEL maintainer="Jay MOULIN <https://femtopixel.com/femtopixel/docker-google-closure-compiler-api> <https://twitter.com/MoulinJay>"

RUN pip install google-closure-compiler-api
COPY ./entrypoint.sh /bin/entrypoint
ENTRYPOINT ["/bin/entrypoint"]
CMD ["google-closure-compiler"]
