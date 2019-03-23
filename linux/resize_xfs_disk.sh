#! /bin/bash
set -e

DEVICE_ID=$1
PARTITION=$2

sudo growpart $DEVICE_ID $PARTITION
sudo xfs_growfs /dev/$DEVICE_ID$PARTITION

df -h
