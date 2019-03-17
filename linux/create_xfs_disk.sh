#!/bin/bash
set -e

DISK=$1
MOUNT_PATH=$2

echo "Formating disk: $DISK"
echo "Disk will be mounted on: $MOUNT_PATH"

sudo apt update && sudo apt install -y xfsprogs
sudo fdisk $DISK
DISK+=1
# TODO: Assumes disk is created in partition ONE
sudo mkdir -p $MOUNT_PATH
sudo mkfs.xfs -f $DISK
sudo mount -t xfs $DISK $MOUNT_PATH

sudo echo "$DISK  /storage xfs  defaults  0  0" >> /etc/fstab
