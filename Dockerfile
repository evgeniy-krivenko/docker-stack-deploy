FROM alpinelinux/docker-cli:latest

LABEL maintainer="kitconcept GmbH <info@kitconcept.com>" \
      org.label-schema.name="docker-stack-deploy" \
      org.label-schema.description="Deploy docker stack" \
      org.label-schema.vendor="kitconcept GmbH" \
      org.opencontainers.image.source="https://github.com/evgeniy-krivenko/docker-stack-deploy" \
      org.label-schema.docker.cmd="docker run -rm -v "${PWD}":/github/workspace ghcr.io/evgeniy-krivenko/docker-stack-deploy"

RUN apk add --no-cache openssh-client findutils bash

COPY scripts/*.sh /

WORKDIR /github/workspace

ENTRYPOINT [ "/docker-entrypoint.sh" ]
