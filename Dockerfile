FROM ubuntu:trusty
MAINTAINER Benedikt Lang <mail@blang.io>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -yq
RUN apt-get install -yq lib32gcc1
