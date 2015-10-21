# VERSION 0.1
# DOCKER-VERSION 1.7.1
# To build:
# 1. Install docker (http://docker.io)
# 2. Checkout source: git@github.com:wpa/mssq.git
# 3. Build container: docker build .

FROM alpine

RUN apk add --update mosquitto
COPY mosquitto.conf /etc/mosquitto/mosquitto.conf
COPY pwfile /pwfile
COPY acl /acl

EXPOSE 1883 
ENTRYPOINT ["/usr/sbin/mosquitto"]
CMD ["-c","/etc/mosquitto/mosquitto.conf"]

