## [Switch123456789](https://github.com/Switch123456789) -> [Home Assistant Apps](https://github.com/Switch123456789/Home-Assistant-Apps) -> [LedFx](https://github.com/Switch123456789/Home-Assistant-Apps/tree/main/LedFx)
![](logo.png)

## Features
- Animate LED's with music from different sources.
- Music Assistant, Sendspin, connected audio interfaces & all the other sources of ledfx are available.
- Webinterface accessible from Home Assistant (ingress).
- Installs the latest from the github main-branch, because it relies partially relies on experimental features.

## Installation
1. Click: [![SHOW APP ON MY HOME ASSISTANT](https://my.home-assistant.io/badges/supervisor_addon.svg)](https://my.home-assistant.io/redirect/supervisor_addon/?addon=e34e2f70_ledfx&repository_url=https%3A%2F%2Fgithub.com%2FSwitch123456789%2FHome-Assistant-Apps)
2. Click OK on the pop-up to add my repo to Home Assistant!
3. Click install!

## Usage
1. The app is preconfigured to receive audio from the local Music Assistant and connect to the local MQTT-broker.
2. Access the webinterface through Home Assistant (Ingress) or at `https://HOSTNAME:8888` to configure the LedFx.
3. In the settings, check `Expert Mode` & `Beta Mode` (on top), click `Features` & enable `Integrations` (will show up in tabs)
4. Enable`Integration: MQTT Home Assistant` to manage MQTT-brokers in the Integration-tab and/or click the `MANAGE`-button to manage sendspin-servers.

## More info
- **Config-files** can be accessed through the `app_configs`-folder.
- **If no `config.json`-file is present** on startup, the app will restore the default configuration.
- **A dummy device** is preconfigured to work around a bug in ledfx. It produces errors if no device is present while using MQTT. Remove the dummy device if you don't need MQTT or after adding your own devices.