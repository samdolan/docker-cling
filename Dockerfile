FROM debian:jessie

MAINTAINER Sam Dolan <samdolan@gmail.com>
WORKDIR /opt

RUN apt-get update && \
    apt-get install --assume-yes \
    git-core \
    build-essential \
    python \
    cmake \
    wget

RUN wget https://raw.githubusercontent.com/karies/cling-all-in-one/master/clone.sh /tmp/clone.sh
RUN CMAKE_CXX_COMPILER=CXX bash /tmp/clone.sh

ENTRYPOINT ["cling"]

