FROM pataquets/ubuntu:xenial

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
    apt-get -y install \
      daemontools \
      inotify-tools \
      moreutils \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

ADD ./cloe_run /usr/local/bin

ENTRYPOINT [ "cloe_run" ]
