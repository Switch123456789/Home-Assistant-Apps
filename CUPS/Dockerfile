ARG BUILD_FROM
FROM $BUILD_FROM
RUN echo "Version: 0.13"

#UPDATE AND INSTALL PACKAGES
#RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    dbus \
    avahi \
    colord \
    cups

#PREPARE PACKAGES
RUN mkdir -p /var/run/dbus && \
    { \
        echo "Listen *:631"; \
        echo "WebInterface Yes"; \
        echo "<Location />"; \
        echo "Order allow,deny"; \
        echo "Allow @LOCAL"; \
        echo "</Location>"; \
        echo "<Location /admin>"; \
        echo "Order allow,deny"; \
        echo "Allow @LOCAL"; \
        echo "</Location>"; \
        echo "LogLevel error"; \
    } > "/etc/cups/cupsd.conf" && \
    rm -r /etc/avahi/services && \
    mv    /etc/avahi /etc/avahi.default && \
    mv    /etc/cups /etc/cups.default

#START SCRIPT
COPY run.sh /
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
#CMD [ "/config/run.sh" ]


#sed -i "s/use-ipv6=yes/use-ipv6=no/"          "/etc/avahi/avahi-daemon.conf" && \
#sed -i "s/Listen localhost:631/Listen *:631/" "/etc/cups/cupsd.conf" && \
#sed -i "s/Browsing Yes/Browsing No/"          "/etc/cups/cupsd.conf"