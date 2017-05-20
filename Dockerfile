FROM fedora:latest
MAINTAINER Nicolas Senaud <nicolas@senaud.fr>

ENV USER root

RUN dnf update -y && \
  dnf install -y \
    make \
    cmake \
    python-pip \
    clang \
    git \
    mesa-libGL-devel mesa-libGLU-devel mesa-libGLw-devel mesa-libOSMesa-devel \
    xorg-dev && \
  pip install -U pip setuptools && \
  pip install conan && \
  rm -rf \
    /tmp/* \
    /var/tmp/* && \
  mkdir /source
VOLUME ["/source"]
WORKDIR /source
CMD ["/bin/bash"]
