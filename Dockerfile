FROM fedora:latest
MAINTAINER Nicolas Senaud <nicolas@senaud.fr>

ENV USER root

RUN dnf update -y && \
  dnf install -y \
    cmake \
    python-pip \
    git && \
  pip install conan && \
  rm -rf \
    /tmp/* \
    /var/tmp/* && \
  mkdir /source
VOLUME ["/source"]
WORKDIR /source
CMD ["/bin/bash"]
