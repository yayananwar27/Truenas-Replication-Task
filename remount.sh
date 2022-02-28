#!/bin/bash
list=$(ls /mnt/pve)

for i in $list
do
        status=$(ls /mnt/pve/$i 2>&1)

        if [[ $status =~ .*Stale.* ]]
                then
                umount /mnt/pve/$i
        fi
done
