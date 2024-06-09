It's a simple image that has mosquitto and a useful JWT Auth plugin preinstalled.

It's based of Ubuntu 24.04 but probably would work fine on something else.
The main pain point of the eclipse-mosquitto image is it lacks dependencies I don't feel like tussling with.

The official image is based off Busy Box and lacks libgcc, The Ubuntu image has it!

## Using this image
It's pretty easy to use, it has mosquitto installed using Ubuntu APT

**Using a config file:**
Override /etc/mosquitto/conf.d/mosquitto.conf

**Using an ENV:**
Set MOSQUITTO_CONFIG to your configuration contents.
The start.sh script will dump it into env.conf and start Mosquitto.

That's it really..
Refer to https://github.com/wiomoc/mosquitto-jwt-auth for instructions on how to use the plugin.
By default if you don't change the config Mosquitto will listen to port 1883 with a websocket listener.
The JWT encryption algo is HS256 and the key is "password"

See the included mosquitto.conf for the default config.