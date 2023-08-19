FROM linuxserver/chromium:amd64-latest

LABEL maintainer="wolkenschieber"
LABEL project_page="https://github.com/wolkenschieber/docker-chromium"

ENV TITLE=Chromium

COPY /policies /etc/chromium/policies

RUN \
    chmod -w /etc/chromium/policies/managed