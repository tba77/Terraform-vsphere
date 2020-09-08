#!/bin/bash

(
echo d
echo 2
echo n       # Add a new partition
echo e       # extended partition
echo 501758  # Partition number
echo         # First sector (Accept default: 1)
echo         # Last sector (Accept default: varies)
echo n       # Add a new partition
#echo 5       # Partition number
echo         # First sector (Accept default: 1)
echo         # Last sector (Accept default: varies)
echo N
echo x       # Go to expert mode
echo b       # 
echo 5       # partition number
echo 501760  # change first sector
echo r       # return to previous mode
echo t       # define new disk fs type
echo 5
echo 8e #set disk to LVM fs
echo w # Write changes
) | sudo fdisk /dev/sda
