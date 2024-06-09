FROM ubuntu:24.04

RUN apt-get update
RUN apt-get install -y mosquitto

RUN mkdir /etc/mosquitto/plugin

# Copy in a prebuilt version (0.4.0) of mosquitto-jwt-auth
# https://github.com/wiomoc/mosquitto-jwt-auth
COPY libmosquitto_jwt_auth.so /etc/mosquitto/plugin/

# Copy in a static HTML page
COPY html /etc/mosquitto/html

# Copy in our config
COPY mosquitto.conf /etc/mosquitto/conf.d/

ENV MOSQUITTO_CONFIG=""

COPY start.sh /

EXPOSE 1883

CMD [ "bash", "start.sh" ]