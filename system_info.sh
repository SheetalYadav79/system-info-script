#!/bin/bash

# Display a title for the script
echo "===================================="
echo "        SYSTEM INFORMATION"
echo "===================================="

# Display the date and time
echo ""
echo "Date and Time: $(date)"
echo "------------------------------------"

# Display the hostname
echo "Hostname: $(hostname)"
echo "------------------------------------"

# Display the OS information (using /etc/os-release)
os_info=$(grep 'PRETTY_NAME' /etc/os-release | cut -d= -f2 | tr -d '"')
echo "Operating System: $os_info"
echo "------------------------------------"

# Display the kernel version
kernel_version=$(uname -r)
echo "Kernel Version: $kernel_version"
echo "------------------------------------"

# Display CPU information
cpu_info=$(lscpu | grep 'Model name' | cut -d: -f2 | xargs)
echo "CPU Information: $cpu_info"
echo "------------------------------------"

# Display total and used memory
echo "Memory Usage:"
free -h | awk '/Mem:/ {print "Total: "$2", Used: "$3", Free: "$4}'
echo "------------------------------------"

# Display disk usage
echo "Disk Usage:"
df -h --output=source,fstype,size,used,avail,pcent,target | column -t
echo "------------------------------------"

# Display top 10 memory-consuming processes
echo "Top 10 Memory-Consuming Processes:"
ps -aux --sort=-%mem | head -n 11 | awk '{print $1, $2, $3, $4, $11}'
echo "------------------------------------"

# Display network information
echo "Network Information:"
ip a | grep inet | awk '{print $2}' | sed 's/\/.*//'
echo "------------------------------------"

# Script finished message
echo "System information gathered successfully!"
