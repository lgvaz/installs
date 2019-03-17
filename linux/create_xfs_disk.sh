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

sudo chmod a+w $MOUNT_PATH
echo "$DISK $MOUNT_PATH xfs  defaults  0  0" | sudo tee --append /etc/fstab
