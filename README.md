# System Information Script

This script gathers and displays essential system information on a Linux system, including date, hostname, OS version, kernel version, CPU details, memory usage, disk usage, top memory-consuming processes, and network information.

## How to Use

1. Clone or download this repository to your local machine.
2. Ensure the script has executable permissions:
   ```bash
   chmod +x system_info.sh
   ```
3. Run the script:
   ```bash
   ./system_info.sh
   ```

## Script Output

The script displays the following information:

- **Date and Time**: Displays the current date and time.
- **Hostname**: Shows the system’s hostname.
- **Operating System**: Provides information about the OS.
- **Kernel Version**: Displays the version of the Linux kernel.
- **CPU Information**: Shows the CPU model name.
- **Memory Usage**: Displays total, used, and free memory.
- **Disk Usage**: Provides details of disk space for all mounted drives.
- **Top 10 Memory-Consuming Processes**: Lists the top 10 processes based on memory usage.
- **Network Information**: Shows IP addresses associated with the system.

## How It Works

The script uses various Linux utilities to retrieve system information:
- `date` and `hostname` for date, time, and hostname.
- `/etc/os-release` for OS details.
- `uname -r` for kernel version.
- `lscpu` for CPU details.
- `free` for memory usage.
- `df -h` for disk usage.
- `ps -aux` for process information.
- `ip a` for network information.

