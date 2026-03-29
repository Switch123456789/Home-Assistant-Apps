#!/usr/bin/with-contenv bashio
CFG_PATH="/root/.config/sendspin/settings-daemon.json"
SENDSPIN_CMD="sendspin daemon --disable-mpris --hardware-volume false"
function check_config {
    declare -g VALUE="$(bashio::config "$1")"
    if [ "${VALUE}" != null ]; then
        if   [ "$1" = boost_volume ]; then
            if [ "${VALUE}" = true ]; then bashio::log.info "SETTING VOLUME TO 100% ..."; amixer -q set Master 100%; fi
        elif [ "$1" = static_delay_ms ]; then
            declare -g SENDSPIN_CMD+=" ${2} ${VALUE}"
        else
            declare -g SENDSPIN_CMD+=" ${2} \"${VALUE}\""    
        fi
    fi
}

check_config boost_volume    false
check_config static_delay_ms "--static-delay-ms"
check_config name            "--name"
check_config id              "--id"
check_config url             "--url"
check_config log_level       "--log-level"

bashio::log.info "CHECKING CONFIGURATION FILE ..."
jq -r 'to_entries[] |  "\(.key): \(.value)"' "${CFG_PATH}"

bashio::log.info "STARTING SENDSPIN ..."
eval "${SENDSPIN_CMD}"