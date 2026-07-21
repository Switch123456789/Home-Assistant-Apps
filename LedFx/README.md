## [Switch123456789](https://github.com/Switch123456789) -> [Home Assistant Apps](https://github.com/Switch123456789/Home-Assistant-Apps) -> [LedFx](https://github.com/Switch123456789/Home-Assistant-Apps/tree/main/LedFx)
![](logo.png)

## Features
- Animate LED's with music from different sources
- Music Assistant, Sendspin, connected audio interfaces & all the other sources of ledfx are available
- Webinterface accessible from Home Assistant (ingress)

## Installation
1. Click: [![SHOW APP ON MY HOME ASSISTANT](https://my.home-assistant.io/badges/supervisor_addon.svg)](https://my.home-assistant.io/redirect/supervisor_addon/?addon=e34e2f70_ledfx&repository_url=https%3A%2F%2Fgithub.com%2FSwitch123456789%2FHome-Assistant-Apps)
2. Click OK on the pop-up to add my repo to Home Assistant!
3. Click install!

## Usage
1. Right after launching the LedFx-app, a playback device should show up in Music Assistant (if installed).
2. Access the webinterface through Home Assistant (Ingress) or at `https://HOSTNAME:8888`.
3. There you can manage the sendspin-servers on the settings-page. Check `Expert Mode` & `Beta Mode` on top, click `Features` & click the `MANAGE`-button.

## More info
- **Config-files** can be accessed through the `app_configs`-folder.
- **If no `config.json`-file is present, the app will create a default configuration, that sets ledfx to receive sendspin-audio from the localhost (for Music Assistant App)