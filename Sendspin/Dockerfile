FROM ghcr.io/home-assistant/base-python

# DEPENDENCIES
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    alsa-plugins-pulse \
    alsa-utils \
    git \
    portaudio \
    gcc

# SENDSPIN
RUN pip install --break-system-packages --no-cache-dir "git+https://github.com/Sendspin/sendspin-cli.git@main"

# FILES
COPY rootfs /

#PERMISSIONS
RUN chmod a+x \
    "/etc/s6-overlay/s6-rc.d/init/run" \
    "/etc/s6-overlay/s6-rc.d/sendspin/run"