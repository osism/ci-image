#!/usr/bin/env bash

sudo pip3 install -r requirements.txt
sudo apt-get update
sudo apt-get install -y lftp kpartx qemu-utils squashfs-tools

wget https://dl.min.io/client/mc/release/linux-amd64/mc
chmod +x mc
