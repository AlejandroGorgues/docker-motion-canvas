FROM library/node:lts-bookworm

ARG DEBIAN_FRONTEND=noninteractive
ARG PROJECT_NAME=animation
ARG PROJECT_PATH=./animation
ARG PROJECT_LANGUAGE=ts
ARG PROJECT_PLUGINS=ffmpeg

RUN apt update \
    && apt install -y --no-install-recommends sudo \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/* \
    && echo "node ALL=(ALL) NOPASSWD: ALL" >/etc/sudoers.d/node \
    && chmod 0440 /etc/sudoers.d/node

WORKDIR ./animation