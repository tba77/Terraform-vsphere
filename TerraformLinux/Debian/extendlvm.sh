#!/bin/bash

(
echo d
sleep 1
echo 2
sleep 1
echo n # Add a new partition
sleep 1
echo p # Primary partition
sleep 1
echo 2 # Partition number
sleep 1
echo   # First sector (Accept default: 1)
sleep 1
echo   # Last sector (Accept default: varies)
sleep 1
echo N
sleep 1
echo t # define new disk fs type
sleep 1
echo 2
sleep 1
echo 8e #set disk to LVM fs
sleep 1
echo w # Write changes
) | fdisk /dev/sda
