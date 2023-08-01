FROM alpinelinux/docker-cli:latest

LABEL maintainer="shockhs <esaxco.vm@gmail.com>" \
      org.label-schema.name="docker-stack-deploy" \
      org.label-schema.description="Deploy docker stack" \
      org.label-schema.vendor="shockhs" \
      org.opencontainers.image.source="https://github.com/shockhs/docker-stack-deploy" \
      org.label-schema.docker.cmd="docker run -rm -v "${PWD}":/github/workspace ghcr.io/shockhs/docker-stack-deploy"

RUN apk add --no-cache openssh-client findutils bash

COPY scripts/*.sh /

WORKDIR /github/workspace

ENTRYPOINT [ "/docker-entrypoint.sh" ]
