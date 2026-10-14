# DEPENDENCIES
FROM ghcr.io/home-assistant/base-python
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    alsa-plugins-pulse \
    g++ \
    gcc \
    git \
    linux-headers \
    make \
    nginx \
    portaudio-dev \
    python3-dev \
    eudev-dev

# APP
RUN pip install --no-cache-dir ledfx 

# FILES
COPY rootfs /
RUN chmod a+x \
    "/etc/s6-overlay/s6-rc.d/init/run"  \
    "/etc/s6-overlay/s6-rc.d/ledfx/run" \
    "/etc/s6-overlay/s6-rc.d/nginx/run"