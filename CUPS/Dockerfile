FROM ghcr.io/home-assistant/base

# DEPENDENCIES
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    avahi \
    colord \
    cups \
    cups-filters \
    dbus \
    gutenprint \
    gutenprint-cups \
    nginx

# FILES
COPY rootfs /
RUN sed -i "s/Listen localhost:631/ServerAlias *\nListen *:631/" "/etc/cups/cupsd.conf" && \
    sed -i "s/IdleExitTimeout 60/#IdleExitTimeout 60/" "/etc/cups/cupsd.conf" && \
    sed -i "s/DefaultAuthType Basic/DefaultAuthType Basic\nDefaultEncryption Never/" "/etc/cups/cupsd.conf" && \
    sed -i "s/  Order allow,deny/  Allow all\n  Order allow,deny/" "/etc/cups/cupsd.conf" && \
    sed -i "s/    Order deny,allow/    Allow all\n    Order deny,allow /" "/etc/cups/cupsd.conf"
RUN mkdir -p /var/run/dbus && \
    mv /etc/avahi /etc/avahi.default && \
    mv /etc/cups  /etc/cups.default

# PERMISSIONS
RUN addgroup "root" lpadmin && \
RUN chmod a+x \
    "/etc/s6-overlay/s6-rc.d/avahi/run" \    
    "/etc/s6-overlay/s6-rc.d/cups/run"  \
    "/etc/s6-overlay/s6-rc.d/dbus/run"  \
    "/etc/s6-overlay/s6-rc.d/nginx/run"