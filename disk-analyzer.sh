#!/bin/bash

# 1. List all disks
# Depending on your system, you might need to adjust this command. 
# For example, on Linux, you might list all devices under /dev/disk/by-path/ or use lsblk, df, or fdisk command. 

# We'll use `df` to list file systems, it's a common command available on many Unix-like systems.

# Get all mounted filesystems, exclude tmpfs and others, then get their mount points
disks=$(df -h | grep '^/' | awk '{ print $NF }')

# 2. For each disk, show biggest files
# Adjust the 'depth' and 'head' parameters as needed.

for disk in $disks; do
    echo "Scanning disk: $disk"
    # To find the biggest files we use 'find' to list files, then 'du' to get their sizes, sort them, and finally show the top ones.
    # This example shows the top 10 biggest files within 2 levels of directories from the root of each disk.
    # You might need to run this script with sudo to access all areas.
    sudo find $disk -type f -exec du -h {} + 2>/dev/null | sort -rh | head -n 10
done
