#!/bin/bash
set -e

DISK=$1
MOUNT_PATH=$2

sudo mkfs.ext4 -m 0 -F -E lazy_itable_init=0,lazy_journal_init=0,discard $DISK
sudo mkdir -p $MOUNT_PATH
sudo mount -o discard,defaults $DISK $MOUNT_PATH
sudo chmod a+w $MOUNT_PATH
sudo cp /etc/fstab /etc/fstab.backup
echo UUID=`sudo blkid -s UUID -o value $DISK` $MOUNT_PATH ext4 discard,defaults,nofail 0 2 | sudo tee -a /etc/fstab
