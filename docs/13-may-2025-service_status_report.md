# 13-May-2025 – Day 5: Service Status & SELinux Check Scripts

## 🧠 Goals
- Monitor critical system services (`sshd`, `firewalld`, etc.)
- Check and report the current status of SELinux
- Gain hands-on with `systemctl`, `getenforce`, `sestatus`
- Expand Git workflow confidence

---

## 📁 Scripts Added

1. `scripts/service_status_report.sh`  
2. `scripts/selinux_check.sh`

---

## 🔧 1. `service_status_report.sh`

### ✔️ Purpose:
Checks whether essential Linux services are active and running.

### ⚙️ Services Monitored:
- `sshd`
- `firewalld`
- `network`
- `chronyd`

### 🧪 Sample Output:
```text
Service Status Report - Tue May 13 11:00:00 UTC 2025
-----------------------------------
Service: sshd | Status: active
Service: firewalld | Status: inactive
Service: network | Status: active
Service: chronyd | Status: active
📌 How to Use:
bash
Copy
Edit
chmod +x service_status_report.sh
./service_status_report.sh
