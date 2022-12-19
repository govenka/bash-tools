#!/bin/bash
# Check if testdisk is installed on the system
if ! dpkg -s testdisk &> /dev/null; then
  # Install testdisk if necessary
  sudo apt-get install testdisk
fi

# Ask the user to enter the name of the file to recover
read -p "Enter the name of the file to recover: " filename

# Ask the user to enter the name of the disk where the file is located
read -p "Enter the name of the disk where the file is located: " disk

# Launch testdisk and recover the file
sudo testdisk $disk <<EOF
  u
  $filename
  y
  q
EOF
