#!/bin/sh

# Determine the directory where the script is located
script_dir="$(cd "$(dirname "$0")" && pwd)"

# Check if tun0 interface exists and get its IP address
tun0_ip=$(ip -4 addr show tun0 | grep -oP '(?<=inet\s)\d+(\.\d+){3}')

# Check if the IP address was found
if [ -n "$tun0_ip" ]; then
  figlet -f slant Geekynut
else
    echo "tun0 interface not found or has no IP address."
    exit 1
fi

# Check if the file list.txt exists in the script's directory
if [ -f "$script_dir/list.txt" ]; then
    while IFS= read -r line; do
        # Replace $LHOST with the tun0 IP address in each line
        modified_line=$(echo "$line" | sed "s/\$LHOST/$tun0_ip/g")
        echo "$modified_line"
    done < "$script_dir/list.txt"
else
    echo "File list.txt not found in the script's directory."
    exit 1
fi


