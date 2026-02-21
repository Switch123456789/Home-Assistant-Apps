#!/usr/bin/with-contenv bashio
function cv {
    declare -g "$1=$(bashio::config "$1")"
    if [ "${!1}" = null ]; then
        declare -g "$1=$2"
    fi
}
CFG_PATH="/root/.config/sendspin/settings-daemon.json"
CMD_STRING="sendspin daemon --audio-device 0 --disable-mpris"


bashio::log.info "Checking config-file:"
bashio::log.info "$CFG_PATH"
cv static_delay_ms "";if [ "${static_delay_ms}" ];then CMD_STRING+=" --static-delay-ms ${static_delay_ms}";fi
cv name ""           ;if [ "${name}" ]           ;then CMD_STRING+=" --name ${name}"                      ;fi
cv id ""             ;if [ "${id}" ]             ;then CMD_STRING+=" --id ${id}"                          ;fi
cv url ""            ;if [ "${url}" ]            ;then CMD_STRING+=" --url ${url}"                        ;fi
cv log_level ""  ;if [ "${log_level}" ]      ;then CMD_STRING+=" --log-level ${log_level}"            ;fi
jq -r 'to_entries[] | "\(.key): \(.value)"' "${CFG_PATH}"


bashio::log.info "Starting with command:"
bashio::log.info "${CMD_STRING}"
${CMD_STRING}