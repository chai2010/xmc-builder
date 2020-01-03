FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y wget

RUN apt-get install -y libjsoncpp-dev
RUN apt-get install -y git build-essential cmake libuv1-dev libmicrohttpd-dev libssl-dev
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y patchelf
RUN apt-get install ocl-icd-opencl-dev

RUN ln -s /usr/include/jsoncpp/json/ /usr/include/json

# golang
RUN mkdir -p /root/download && cd /root/download \
  && wget https://dl.google.com/go/go1.13.5.linux-amd64.tar.gz \
  && tar -zxvf go1.13.5.linux-amd64.tar.gz \
  && mv ./go /usr/local/go1.13.5
RUN ln -s /usr/local/go1.13.5/bin/go /usr/bin/go
RUN rm -rf /root/download

ENV GOPATH=/go
ENV GOLANG_VERSION=1.13.5
ENV GOPROXY=https://goproxy.cn

WORKDIR /root

CMD ["sh"]
