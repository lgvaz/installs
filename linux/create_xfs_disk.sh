#!/bin/bash
set -e

DISK=$1
MOUNT_PATH=$2

echo "Formating disk: $DISK"
echo "Disk will be mounted on: $MOUNT_PATH"

sudo apt update && sudo apt install -y xfsprogs
sudo fdisk $DISK
# TODO: Assumes disk is created in partition ONE
PART=1
sudo mkdir -p $MOUNT_PATH
sudo mkfs.xfs -f $DISK$PART
sudo mount -t xfs $DISK$PART $MOUNT_PATH

sudo chmod a+w $MOUNT_PATH
echo UUID=`sudo blkid -s UUID -o value $DISK$PART` $MOUNT_PATH xfs discard,defaults,nofail 0 2 | sudo tee -a /etc/fstab
