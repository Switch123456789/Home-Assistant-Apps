ARG BUILD_FROM=ghcr.io/home-assistant/base-python
FROM ${BUILD_FROM}
RUN echo "Version: 0.20"

# INSTALL PACKAGES
RUN for r in http://dl-cdn.alpinelinux.org/alpine/edge/main http://dl-cdn.alpinelinux.org/alpine/edge/community; do grep -qxF "$r" /etc/apk/repositories || echo "$r" >> /etc/apk/repositories; done
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    alsa-plugins-pulse \
    alsa-utils \
    portaudio \
    py3-pip \
    git

# INSTALL SENDSPIN-CLI
RUN git clone https://github.com/Sendspin/sendspin-cli.git /tmp/sendspin-cli && \
    cd /tmp/sendspin-cli && \
    pip3 install --break-system-packages --no-cache . && \
    rm -rf /tmp/sendspin-cli

# PREPARE CONFIG
RUN mkdir -p /root/.config/sendspin
RUN printf '%s\n' "{" \
        "  \"name\": \"Home Assistant\"," \
        "  \"client_id\": \"home_assistant\"," \
        "  \"last_server_url\": \"ws://[::1]:8927/sendspin\"" \
    "}" > /root/.config/sendspin/settings-daemon.json

# START SCRIPT
COPY run.sh /
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
#CMD [ "/config/run.sh" ]