FROM nvidia/opencl:runtime-ubuntu16.04

RUN apt-get update
RUN apt-get install -y libjsoncpp-dev
RUN apt-get install -y git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y patchelf

RUN ln -s /usr/include/jsoncpp/json/ /usr/include/json

WORKDIR /root

CMD ["sh"]
