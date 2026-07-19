#!/usr/bin/with-contenv bashio
bashio::log.info "Preparing LedFx ..."
ln -s "/config/" "/root/.ledfx"
if [ ! -f "/config/config.json" ]; then
    bashio::log.info "Creating default config.json ..."
    printf '{
    "audio": {
        "audio_device": 2
    },
    "sendspin_servers": {
        "music-assistant": {
            "client_name": "LedFx",
            "server_url": "ws://[::1]:8927/sendspin"
        }
    }    
}' > "/config/config.json" 
fi
bashio::log.info "Starting LedFx ..."
ledfx
bashio::log.info "Stopping LedFx ..."