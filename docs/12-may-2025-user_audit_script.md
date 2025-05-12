# 12-May-2025 – User Audit Script (`user_audit.sh`)

## 🔧 Script Purpose

The `user_audit.sh` script is designed to:

* List all **non-system (real)** users on a Red Hat/CentOS server
* Show each user's **last login time**
* Help system admins or SREs with **user activity auditing**

---

## 📁 Script Location

`rhel-linux-automation/scripts/user_audit.sh`

---

## 🧠 What It Does

* Reads the minimum user UID threshold from `/etc/login.defs` (usually UID 1000+ are human users)
* Skips system accounts and service users
* Displays a clean, readable report of the last login time for each real user

---

## 💡 Sample Output

```text
User Audit Report - Fri May 10 09:10:23 UTC 2025
------------------------------------
User: john        |  Last Login: May 9 14:22:03 +0000
User: devops1     |  Last Login: Never logged in
```

