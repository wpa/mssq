# VERSION 0.1
# DOCKER-VERSION 1.7.1
# To build:
# 1. Install docker (http://docker.io)
# 2. Checkout source: git@github.com:wpa/mssq.git
# 3. Build container: docker build .

FROM alpine

RUN apk add --update mosquitto

EXPOSE 1883
CMD ["mosquitto"]

