#!/usr/bin/with-contenv bashio
CFG_PATH="/root/.config/sendspin/settings-daemon.json"
SENDSPIN_CMD="sendspin daemon --audio-device 0 --disable-mpris"
function check_config {
    declare -g VALUE="$(bashio::config "$2")"
    if [ "${VALUE}" != null ]; then if [ "$1" = str ]
        then declare -g SENDSPIN_CMD+=" ${3} \"${VALUE}\""
        else declare -g SENDSPIN_CMD+=" ${3} ${VALUE}"
    fi; fi
}


bashio::log.info "Checking config-file:"
bashio::log.info "$CFG_PATH"
check_config int static_delay_ms "--static-delay-ms"
check_config str name            "--name"
check_config str id              "--id"
check_config str url             "--url"
check_config str log_level       "--log-level"
jq -r 'to_entries[] |  "\(.key): \(.value)"' "${CFG_PATH}"


bashio::log.info "Starting with command:"
bashio::log.info "${SENDSPIN_CMD}"
eval "${SENDSPIN_CMD}"