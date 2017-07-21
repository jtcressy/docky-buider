FROM ubuntu:16.04

MAINTAINER Joel Cressy <joel@jtcressy.net>

WORKDIR /docky

RUN apt-get update &&\
    apt-get dist-upgrade -y &&\
    apt-get -y install python-software-properties software-properties-common &&\
    add-apt-repository -y ppa:docky-core/stable &&\
    apt-get update &&\
    apt-get -y install bzr libgio2.0-cil-dev &&\
    apt-get build-dep docky -y 

RUN bzr branch lp:docky
RUN apt-get -y install tzdata
RUN echo "Europe/London" > /etc/timezone && dpkg-reconfigure -f noninteractive tzdata
COPY ./entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT /entrypoint.sh
CMD bash