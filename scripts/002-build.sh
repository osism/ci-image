#!/usr/bin/env bash

export ELEMENTS_PATH=./elements

export DIB_CLOUD_INIT_DATASOURCES="ConfigDrive, OpenStack"

export DIB_RELEASE=jammy

export DIB_DEV_USER_USERNAME=ubuntu
export DIB_DEV_USER_PWDLESS_SUDO=yes

disk-image-create \
  -a amd64 \
  -o ci-image \
  --image-size 8 \
  vm ubuntu ci-image devuser

qemu-img info ci-image.qcow2
