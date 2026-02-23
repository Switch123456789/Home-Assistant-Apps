# [Switch123456789](https://github.com/Switch123456789/Home-Assistant-Apps) -> [Home Assistant Apps](https://github.com/Switch123456789/Home-Assistant-Apps) -> [Sendspin](https://github.com/Switch123456789/Home-Assistant-Apps/tree/main/Sendspin)
![](logo.png)

## Features
- This app allows [Sendspin](https://github.com/Sendspin/sendspin-cli)-playback on audio interfaces, that are connected to Home Assistants host-system.
- Exposes some configuration-options from sendspin to the app-config-page in Home Assistant.

## Installation
1. Click: [![SHOW APP ON MY HOME ASSISTANT](https://my.home-assistant.io/badges/supervisor_addon.svg)](https://my.home-assistant.io/redirect/supervisor_addon/?addon=e34e2f70_sendspin&repository_url=https%3A%2F%2Fgithub.com%2FSwitch123456789%2FHome-Assistant-Apps)
2. Click OK on the pop-up to add my repo to Home Assistant
3. Click install

## Usage
- Works out of the box in most cases.
- If you don't get audio output, check the audio output settings in the config-tab.
## More info
- On startup the log will show the current configuration-file.
- This app comes with a minimal config-file for basic settings:
```
{
  "name": "Home Assistant",
  "client_id": "home_assistant",
  "last_server_url": "ws://[::1]:8927/sendspin"
}
```
- The settings in the configuration-tab will be applied to sendspin via commandline.
- Sendspin will store those settings in it's configuraton-file, whenever it shuts down BUT ONLY if changes were applied at runtime (including volume-changes but excluding commandline-parameters), so keep that in mind.