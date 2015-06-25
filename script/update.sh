#!/bin/sh

# Update the box
DEBIAN_FRONTEND=noninteractive apt-get -y update
DEBIAN_FRONTEND=noninteractive apt-get -y upgrade

# Install dependencies
apt-get -y install dkms
apt-get -y install nfs-common
