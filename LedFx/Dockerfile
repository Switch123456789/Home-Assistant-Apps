FROM ghcr.io/home-assistant/base-python:3.13-alpine3.24
RUN echo "Version: 0.5"

#INSTALL PACKAGES (APK)
RUN apk update && apk upgrade --no-cache && apk add --no-cache \
    python3-dev \
    fftw-dev \
    libsndfile-dev \
    portaudio-dev \
    alsa-lib-dev \
    linux-headers \
    make \
    cmake \
    git \
    flac-dev \
    zlib-dev \
    jpeg-dev \
    freetype-dev \
    libffi-dev \
    gcc \
    g++ \
    musl-dev \
    pkgconf \
    alsa-plugins-pulse

#INSTALL PACKAGES (PIP3)
RUN pip install --no-cache-dir pyudev ledfx

#START SCRIPT
RUN rm -R -f "/tmp/"*
COPY run.sh /
RUN chmod a+x /run.sh
CMD [ "/run.sh" ]
#CMD [ "/config/run.sh" ]