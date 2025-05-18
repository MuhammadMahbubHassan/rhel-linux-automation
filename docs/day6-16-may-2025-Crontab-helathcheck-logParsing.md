# 📅 Day 6 – Crontab, Log Parsing, and Health Monitoring (14-May-2025)

## 🔧 Objective

Understand and practice:
- Cron job auditing and scheduling
- System log parsing for alerts
- Basic system health check monitoring
- Automating all three using cron jobs

---

## 📁 Scripts Overview

### 1. `cron_audit.sh` – Audit Cron Jobs of All Users

**Purpose**: Lists all cron jobs configured across users, including `/etc/crontab`, `/etc/cron.d`, and user-specific crontabs.

**Location**: `scripts/cron_audit.sh`

**Key Features**:
- Uses `getent passwd` to iterate over valid users
- Checks crontab entries using `crontab -l`
- Adds headers and formatting for readability

---

### 2. `log_alert_monitor.sh` – Log File Error Watcher

**Purpose**: Monitors `/var/log/messages` for keywords such as `error`, `fail`, `panic`, and prints recent matches for alerting.

**Location**: `scripts/log_alert_monitor.sh`

**Key Features**:
- Case-insensitive search for key terms
- Uses `tail -n` and `grep -Ei` to filter logs
- Easy to extend to monitor custom logs or alert by mail

---

### 3. `health_check.sh` – Basic System Health Check

**Purpose**: Summarizes CPU load, memory, disk usage, uptime, and top resource-consuming processes.

**Location**: `scripts/health_check.sh`

**Key Features**:
- `/proc/loadavg`, `uptime`, `free`, and `df` used for reporting
- Lists top 5 memory and CPU consuming processes using `ps`
- Ideal for running via cron and storing reports in `/var/log/`

---

## 🕒 Sample Cron Scheduling

You can schedule each script via `crontab -e` (example below):

```cron
# Run cron audit every day at 6AM
0 6 * * * /path/to/cron_audit.sh > /var/log/cron_audit.log 2>&1

# Run log alert monitor every 30 minutes
*/30 * * * * /path/to/log_alert_monitor.sh >> /var/log/log_alert.log 2>&1

# Run health check daily at 9AM
0 9 * * * /path/to/health_check.sh >> /var/log/health_check.log 2>&1

