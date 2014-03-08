# Base Linux plus Standalone Passenger
#
# VERSION               0.1

FROM ubuntu
MAINTAINER Peter Olsen <polsen@gannett.com>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y apt-transport-https build-essential ca-certificates zlib1g-dev libssl-dev libreadline6-dev libyaml-dev libsqlite3-dev libcurl4-openssl-dev git apache2-mpm-worker apache2-threaded-dev libapr1-dev libaprutil1-dev libffi-dev libgdbm-dev nodejs

RUN echo "deb https://oss-binaries.phusionpassenger.com/apt/passenger precise main" > /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 561F9B9CAC40B2F7
RUN apt-get update
RUN apt-get install passenger
