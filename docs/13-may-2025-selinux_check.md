Purpose:
Reports the current mode and configuration status of SELinux.

📌 Commands Used:
getenforce — returns Enforcing, Permissive, or Disabled

sestatus — detailed configuration info

🧪 Sample Output:
text
Copy
Edit
SELinux Status Report - Tue May 13 11:02:00 UTC 2025
-----------------------------------
Enforcing

SELinux status:                 enabled
SELinuxfs mount:               /sys/fs/selinux
SELinux root directory:        /etc/selinux
Loaded policy name:            targeted
Current mode:                  enforcing
