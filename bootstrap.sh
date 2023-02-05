#! /bin/bash

# set proxmox llvm root to be all of the llvm volume
# TODO delete the local lvm storage in the proxmox GUI

lvremove /dev/pve/data
swapoff /dev/mapper/pve-swap
lvremove /dev/pve/swap
lvresize -l +100%FREE /dev/pve/root
resize2fs /dev/mapper/pve-root

apt install netselect-apt

netselect-apt --arch amd64
# TODO copy the url from the generated sources.list to the first two urls in /etc/apt/sources.list (but not the security updates repo
