FROM library/ubuntu:trusty

ENTRYPOINT ["gearmand", "--keepalive", "--keepalive-idle=240"]
EXPOSE 4730

RUN apt-get update \
  && apt-get install -y -q wget gcc autoconf bison flex libtool make libboost-all-dev libcurl4-openssl-dev curl libevent-dev uuid-dev gperf g++ \
  && wget https://launchpad.net/gearmand/1.2/1.1.12/+download/gearmand-1.1.12.tar.gz \
  && tar -xzf gearmand-1.1.12.tar.gz \
  && cd gearmand-1.1.12 \
  && ./configure && make && make install \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists
