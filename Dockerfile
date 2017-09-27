FROM debian:9

LABEL maintainer="simon@widgit.com"

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get -y update && \
    apt-get -y install wget build-essential xorg net-tools && \
    wget -O /tmp/vmware-install.bundle \
      https://softwareupdate.vmware.com/cds/vmw-desktop/ws/12.5.7/5813279/linux/core/VMware-Workstation-12.5.7-5813279.x86_64.bundle.tar && \
    chmod +x /tmp/vmware-install.bundle && \
    /tmp/vmware-install.bundle --eulas-agreed --console --required && \
    rm /tmp/vmware-install.bundle && \
    apt-get -y clean

