## [Switch123456789](https://github.com/Switch123456789) -> [Home Assistant Apps](https://github.com/Switch123456789/Home-Assistant-Apps) -> [Sendspin](https://github.com/Switch123456789/Home-Assistant-Apps/tree/main/Sendspin)
![](logo.png)

## Features
- This app allows [Sendspin](https://github.com/Sendspin/sendspin-cli)-playback on audio interfaces, that are connected to Home Assistants host-system.
- Exposes some configuration-options from sendspin to the app-config-page in Home Assistant.

## Installation
1. Click: [![SHOW APP ON MY HOME ASSISTANT](https://my.home-assistant.io/badges/supervisor_addon.svg)](https://my.home-assistant.io/redirect/supervisor_addon/?addon=e34e2f70_sendspin&repository_url=https%3A%2F%2Fgithub.com%2FSwitch123456789%2FHome-Assistant-Apps)
2. Click OK on the pop-up to add my repo to Home Assistant
3. Click install

## Usage
1. Make sure to use the latest Music Assistant Beta (this requirement might change in the future, whenever sendspin becomes stable).
2. Works out of the box if Music Assistant is installed on the same host.
3. If you don't get audio output, check the audio output settings in the config-tab.

## More info
- This app installs `sendspin-cli` from the main-branch.
- It deploys a default configuration, that sets sendspin to receive audio from the localhost (for Music Assistant App).
- The settings in the configuration-tab will be applied to sendspin via commandline.
- Sendspin will store those settings in it's configuraton-file, whenever it shuts down BUT ONLY if changes were applied at runtime (including volume-changes but excluding commandline-parameters), so keep that in mind.