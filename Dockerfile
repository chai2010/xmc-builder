FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y libjsoncpp-dev
RUN apt-get install -y git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y patchelf

RUN ln -s /usr/include/jsoncpp/json/ /usr/include/json

# golang
# https://github.com/golang/go/wiki/Ubuntu
RUN add-apt-repository ppa:longsleep/golang-backports
RUN apt-get update
RUN apt-get install golang-1.13-go

WORKDIR /root

CMD ["sh"]
