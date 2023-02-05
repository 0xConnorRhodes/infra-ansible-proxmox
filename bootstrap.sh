#! /bin/bash

# set proxmox llvm root to be all of the llvm volume
# 1. delete the local lvm storage in the proxmox GUI

lvremove /dev/pve/data
lvresize -l +100%FREE /dev/pve/root
resize2fs /dev/mapper/pve-root


