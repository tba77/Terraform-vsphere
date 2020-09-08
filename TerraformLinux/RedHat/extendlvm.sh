#!/bin/bash

(
echo d
echo 2
echo n # Add a new partition
echo p # Primary partition
echo 2 # Partition number
echo   # First sector (Accept default: 1)
echo   # Last sector (Accept default: varies)
echo N
echo t # define new disk fs type
echo 2
echo 8e #set disk to LVM fs
echo w # Write changes
) | fdisk /dev/sda
