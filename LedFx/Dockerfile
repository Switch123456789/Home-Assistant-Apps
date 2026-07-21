FROM ghcr.io/home-assistant/base-python:3.13-alpine3.24

# INSTALL DEPENDENCIES
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    linux-headers \
    alsa-plugins-pulse \
    pkgconf \
    git \
    make \
    cmake \
    gcc \
    g++ \
    nginx \
    portaudio-dev \
    eudev-dev

# INSTALL PACKAGES (PIP3)
RUN pip install --no-cache-dir "aiosendspin==6.1.1" "git+https://github.com/LedFx/LedFx.git@main"
#RUN pip install --no-cache-dir ledfx

# START SCRIPT
COPY rootfs /
RUN chmod a+x "/etc/s6-overlay/s6-rc.d/ledfx/run" "/etc/s6-overlay/s6-rc.d/nginx/run"