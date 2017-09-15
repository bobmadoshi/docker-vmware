FROM debian:9

LABEL maintainer="simon@widgit.com"

RUN apt-get -y update && \
    apt-get -y install wget build-essential xorg && \
    wget -O /tmp/vmware-install.bundle http://www.vmware.com/go/tryworkstation-linux-64 && \
    chmod +x /tmp/vmware-install.bundle && \
    /tmp/vmware-install.bundle --eulas-agreed --console --required && \
    rm /tmp/vmware-install.bundle && \
    apt-get -y clean

