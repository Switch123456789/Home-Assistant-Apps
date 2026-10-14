## [Switch123456789](https://github.com/Switch123456789) -> [Home Assistant Apps](https://github.com/Switch123456789/Home-Assistant-Apps) -> [LedFx](https://github.com/Switch123456789/Home-Assistant-Apps/tree/main/LedFx)
![](logo.png)

## Features
- Animates LED's connected to the host-system or the network using audio-signals.
- All [audio sources supported by LedFx](https://docs.ledfx.app/en/latest/settings/directing_audio.html) are supported by this app, including Sendspin/Music Assistant.
- Almost all [devices supported by LedFx](https://docs.ledfx.app/en/latest/devices/index_devices.html) are supported by this app. There could be some exceptions, due to limited hardware access to the host-system.
- The webinterface accessible from Home Assistant (ingress).
- A fresh installation auto-connects to the local sendspin-server, if available.
- If a MQTT broker-app is installed on the same machine, this app will autoconnect using autocreated authentication via API. This exposes some LedFx features to MQTT/Home Assistant.

## Installation
1. Click: [![SHOW APP ON MY HOME ASSISTANT](https://my.home-assistant.io/badges/supervisor_addon.svg)](https://my.home-assistant.io/redirect/supervisor_addon/?addon=e34e2f70_ledfx&repository_url=https%3A%2F%2Fgithub.com%2FSwitch123456789%2FHome-Assistant-Apps)
2. Click OK on the pop-up to add my repo to Home Assistant!
3. Click install!

## Usage
1. Access the webinterface through Home Assistant (Ingress) or at `https://HOSTNAME:8888` to configure the LedFx.
2. In the settings, check `Expert Mode` & `Beta Mode` (on top) & click `Features`!
3. If you don't have Music Assistant installed on the host-machine or want to manage the connections, click `MANAGE` next to `"Sendspin Servers`.
4. If you have a MQTT broker-app installed and don't want LedFx to connect to it or just want to manage connections, enable `Integration: MQTT Home Assistant` & click the tab `Integrations` on the bottom.

## More info
- **Config-files** can be accessed through the `app_configs`-folder.
- **If no `config.json`-file is present** on startup, the app will generate a new one.
- **If a MQTT-broker-app is installed**, this app creates a dummy device in order to work around a bug in LedFx. It produces errors if no device is present while MQTT is configured. Remove the dummy device if you don't need MQTT or after you added your real devices.