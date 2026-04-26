#!/usr/bin/with-contenv bashio
CFG_PATH="/root/.config/sendspin/settings-daemon.json"
SENDSPIN_CMD="sendspin daemon --disable-mpris --hardware-volume false --manufacturer \"Music Assistant\" --product-name \"Home Assistant\""
function check_config {
    VALUE="$(bashio::config "$1")"
    if [[ "${1}" == str_* ]] && [ "${VALUE}" != null ]; then
        declare -g SENDSPIN_CMD+=" ${2} \"${VALUE}\""
    elif [[ "${1}" == bool_* ]]; then
        if [ "${VALUE}" != null ]; then
            declare -g "$1"="$VALUE"
        else
            declare -g "$1"="false"
        fi
    fi
}


bashio::log.info "CHECKING CONFIGURATION FILE ..."
check_config bool_boost_volume   false
check_config str_name            "--name"
check_config str_id              "--id"
check_config str_url             "--url"
check_config str_log_level       "--log-level"
jq -r 'to_entries[] |  "\(.key): \(.value)"' "${CFG_PATH}"
if [ "${bool_boost_volume}" = true ]; then bashio::log.info "SETTING VOLUME TO 100% ..."; amixer -q set Master 100%; fi


bashio::log.info "STARTING SENDSPIN ..."
eval "${SENDSPIN_CMD}"