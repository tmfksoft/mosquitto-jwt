if [[ -z "${MOSQUITTO_CONFIG}" ]]; then
	echo "Running Mosquitto using /etc/mosquitto/conf.d/mosquitto.conf"
	mosquitto -c /etc/mosquitto/conf.d/mosquitto.conf
else
	echo $MOSQUITTO_CONFIG > /etc/mosquitto/conf.d/env.conf
	echo "Running Mosquitto using MOSQUITTO_CONFIG"
	mosquitto -c /etc/mosquitto/conf.d/env.conf
fi