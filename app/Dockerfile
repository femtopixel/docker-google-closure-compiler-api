FROM openjdk:jre-alpine as builder

COPY qemu-*-static /usr/bin/

FROM builder

LABEL maintainer="Jay MOULIN <jaymoulin@gmail.com> <https://twitter.com/MoulinJay>"

RUN apk add wget unzip --update --virtual .build-deps && \
wget "https://dl.google.com/closure-compiler/compiler-latest.zip" && \
unzip "compiler-latest.zip" && \
mv *.jar /bin/compiler.jar && \
apk del wget --purge .build-deps
COPY ./entrypoint.sh /bin/entrypoint
ENTRYPOINT ["/bin/entrypoint"]
CMD ["java", "-jar", "/bin/compiler.jar"]
