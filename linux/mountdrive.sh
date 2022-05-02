#!/bin/bash

mount_folder=/home/shuk/project

df -h # check mount list

## 2.2 Edit /etc/fstab
# sudo vim /etc/fstab and append following

# /dev/sdb1    /hdd    ext4    defaults    0    0



### umount sample
#umount [Filesystem|Mount Path]
#umount /dev/sda1
mdkir ${mount_folder}
mount ${mount_folder}