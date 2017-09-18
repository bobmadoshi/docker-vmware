# VMWare for Docker

This is a simple Debian container with VMWare Workstation installed.

VMWare modules and services need to be installed and running on your host.

VT-x will be required if using this image on a VM. In order to use VMWare
this container must be run with the `--privileged` and `--net=host` parameters.
Please be aware of the security implications of this.

