FROM ghcr.io/home-assistant/base-python

# INSTALL DEPENDENCIES
#RUN for r in http://dl-cdn.alpinelinux.org/alpine/edge/main http://dl-cdn.alpinelinux.org/alpine/edge/community; do grep -qxF "$r" /etc/apk/repositories || echo "$r" >> /etc/apk/repositories; done
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    alsa-plugins-pulse \
    alsa-utils \
    git \
    portaudio \
    gcc

# INSTALL SENDSPIN-CLI
RUN git clone https://github.com/Sendspin/sendspin-cli.git /tmp/sendspin-cli && \
    cd /tmp/sendspin-cli && \
    pip3 install --break-system-packages --no-cache . && \
    rm -rf /tmp/sendspin-cli && \
    mkdir -p /root/.config

# START SCRIPT
COPY rootfs /
RUN chmod a+x "/etc/s6-overlay/s6-rc.d/app/run"
#CMD [ "/run.sh" ]
#CMD [ "/config/run.sh" ]