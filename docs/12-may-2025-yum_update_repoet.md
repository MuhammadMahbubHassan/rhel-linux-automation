# 12-may-2025 – YUM Update Report Script (`yum_update_report.sh`)

## 🔧 Script Purpose

The `yum_update_report.sh` script provides:
- A summary of **available package updates**
- A report on **security-related updates** (if supported)
- Output that helps sysadmins proactively manage patching and compliance

---

## 📁 Script Location
`rhel-linux-automation/scripts/yum_update_report.sh`

---

## 🧠 What It Does

- Runs `yum check-update` to list general package updates
- Attempts to run `yum updateinfo list security all` for security-specific advisories
- Displays each section with clear headers

---

## 💡 Sample Output

```text
YUM Update Report - Fri May 10 12:15:00 UTC 2025
----------------------------------------

[+] Available Package Updates:
bash.x86_64           4.4.20-2.el8_7             baseos
curl.x86_64           7.61.1-26.el8_7.3          baseos

[+] Security Updates (if 'yum-plugin-security' is installed):
RHSA-2025:1234: Moderate: curl security update
RHSA-2025:4567: Important: bash security update

