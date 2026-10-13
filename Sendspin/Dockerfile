# DEPENDENCIES
FROM ghcr.io/home-assistant/base-python
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    alsa-plugins-pulse \
    alsa-utils \
    git \
    portaudio \
    gcc

# APP
RUN pip install --break-system-packages --no-cache-dir "git+https://github.com/Sendspin/sendspin-python-cli.git@main"

# FILES
COPY rootfs /
RUN chmod a+x \
    "/etc/s6-overlay/s6-rc.d/init/run" \
    "/etc/s6-overlay/s6-rc.d/sendspin/run"