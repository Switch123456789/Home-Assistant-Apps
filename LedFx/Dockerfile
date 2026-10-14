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

# SENDSPIN IS BROKEN IN CURRENT RELEASE, APPLYING FIX FROM MAINBRANCH
RUN wget -qO "$(python -c 'import ledfx,os;print(os.path.dirname(ledfx.__file__))')/sendspin/stream.py" \
    https://raw.githubusercontent.com/LedFx/LedFx/d0423a6bd6c4044224515b35149a0e91a865cfe1/ledfx/sendspin/stream.py

# FILES
COPY rootfs /
RUN chmod a+x \
    "/etc/s6-overlay/s6-rc.d/init/run"  \
    "/etc/s6-overlay/s6-rc.d/ledfx/run" \
    "/etc/s6-overlay/s6-rc.d/nginx/run"