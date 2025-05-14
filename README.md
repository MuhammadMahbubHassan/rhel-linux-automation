# rhel-linux-automation
 Production-ready shell scripts and Linux admin automation for Red Hat-based systems

 A curated collection of shell scripts for Red Hat-based Linux systems to automate common sysadmin tasks.
Designed to build deep hands-on expertise as part of a DevOps/SRE transition journey.

---

## 📁 Folder Structure

```bash
.
├── scripts/        # All automation scripts
├── docs/           # Markdown documentation for each day
└── README.md       # This file
📆 Daily Script Index
Day	Script	Description
1	disk_usage_check.sh	Monitor disk usage and alert if threshold exceeded
2	user_audit.sh	Lists login-enabled users and their shell
3	Git & workflow setup	GitHub → CentOS → Windows tested
4	yum_update_report.sh	Reports available & security updates
5	service_status_report.sh	Checks key services like sshd, firewalld
5	selinux_check.sh	Displays SELinux mode and detailed status

🚀 How to Run a Script
bash
Copy
Edit
cd scripts/
chmod +x script_name.sh
./script_name.sh
Most scripts are read-only and safe to run.
Some may require sudo for full output.

🛠 Requirements
RHEL, CentOS, Rocky Linux (7/8/9)

bash, coreutils, yum or dnf

Optional: yum-plugin-security for update script

🤝 Contributions (Personal Use or Team)
Fork or clone the repo

Create or edit scripts inside scripts/

Add daily documentation inside docs/

Use Git to version control:

bash
Copy
Edit
git add scripts/your_script.sh docs/DayX.md
git commit -m "Add DayX script and doc"
git push origin main
📌 License
Muhammad Mahbub Hassan – Use, modify, and share freely.
