
## XFS
Install xfsprogs  

If have a partition:
```bash
sudo growpart $DEVICE_ID $PARTITION
sudo xfs_growfs /dev/$DEVICE_ID$PARTITION
```

else:
```
sudo xfs_growfs /dev/$DEVICE_ID
