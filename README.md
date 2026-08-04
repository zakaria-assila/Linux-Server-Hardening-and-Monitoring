
<div align="center">

# 🔒 Linux Server Hardening & Monitoring

### Secure • Harden • Monitor • Automate

A hands-on Ubuntu Server project focused on Linux administration, server hardening, security auditing, monitoring, and Bash automation.

![Ubuntu](https://img.shields.io/badge/Ubuntu-24.04-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-Administration-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/Bash-Scripting-4EAA25?style=for-the-badge&logo=gnubash&logoColor=white)
![UFW](https://img.shields.io/badge/UFW-Firewall-success?style=for-the-badge)
![Fail2Ban](https://img.shields.io/badge/Fail2Ban-Enabled-blue?style=for-the-badge)
![Lynis](https://img.shields.io/badge/Lynis-Security_Audit-red?style=for-the-badge)

---

*A practical portfolio project demonstrating Linux administration and security fundamentals.*

</div>

---

# 📑 Table of Contents

- Project Overview
- Project Goals
- Technologies
- Project Structure
- System Baseline
- Server Hardening
- Security Audit
- Bash Automation
- Screenshots
- Skills Demonstrated
- Future Improvements
- Author

---

# 📖 Project Overview

This project documents the process of building and securing an Ubuntu Server from scratch.

The goal was not only to install Linux, but to apply real-world system administration practices including firewall configuration, SSH hardening, brute-force protection, security auditing, monitoring, and Bash automation.

Everything in this repository was configured and tested manually.

---

# 🎯 Project Goals

- Install Ubuntu Server
- Collect baseline system information
- Configure UFW Firewall
- Harden SSH
- Protect SSH using Fail2Ban
- Perform a Lynis Security Audit
- Monitor system health
- Automate backups
- Monitor authentication logs
- Practice Bash scripting
- Document every step

---

# 🛠 Technologies

| Category | Tools |
|----------|------|
| Operating System | Ubuntu Server 24.04 |
| Shell | Bash |
| Firewall | UFW |
| Intrusion Prevention | Fail2Ban |
| Security Audit | Lynis |
| Monitoring | htop, btop, sysstat |
| Logs | journalctl |
| Backup | tar |

---

# 📂 Project Structure

```text
Linux-Server-Hardening-and-Monitoring/

├── README.md
│
├── scripts/
│   ├── health-check.sh
│   ├── backup.sh
│   └── log_monitor.sh
│
└── screenshots/
    ├── hostname.png
    ├── system-info.png
    ├── firewall.png
    ├── ssh-hardening.png
    ├── fail2ban.png
    ├── lynis-audit.png
    ├── health-check.png
    ├── backup-success.png
    ├── backup-files.png
    ├── backup-content.png
    └── log-monitor.png
```

---

# 🖥 System Baseline

Collected important system information before applying security changes.

Commands used:

```bash
hostnamectl
ip a
df -h
free -h
lsblk
```

Collected information:

- Hostname
- IP Address
- Memory Usage
- Disk Usage
- Storage Devices
- Operating System
- Kernel Information

---

# 🔥 UFW Firewall

Configured Ubuntu Firewall (UFW).

Allowed:

- SSH (Port 22)

Blocked:

- All unnecessary incoming connections

Verification:

```bash
sudo ufw status verbose
```

---

# 🔐 SSH Hardening

Applied multiple SSH hardening techniques.

Implemented:

- Disabled Root Login
- Reduced MaxAuthTries
- Reduced LoginGraceTime
- Disabled X11 Forwarding
- Protocol 2

Configuration file:

```text
/etc/ssh/sshd_config
```

> **Note:** If using SSH key authentication, `PasswordAuthentication no` is recommended for stronger security.

---

# 🛡 Fail2Ban

Configured Fail2Ban to automatically protect the server against SSH brute-force attacks.

Verification:

```bash
sudo fail2ban-client status

sudo fail2ban-client status sshd
```

---

# 🔎 Security Audit

Performed a complete security audit using Lynis.

```bash
sudo lynis audit system
```

### Audit Result

| Metric | Value |
|---------|------|
| Security Audit | Completed |
| Hardening Index | **65** *(Post-hardening)* |

Lynis also provided recommendations for future hardening improvements.

---

# 📊 Monitoring Tools

Installed:

- htop
- btop
- sysstat

Useful commands:

```bash
htop
btop
iostat
mpstat
```

---

# ❤️ Health Check Script

Displays:

- Hostname
- Uptime
- Memory Usage
- Disk Usage
- IP Address
- SSH Status
- Fail2Ban Status
- Firewall Status

Run:

```bash
./health-check.sh
```

---

# 💾 Backup Script

Automatically creates a compressed backup of the `/etc` directory.

Features:

- Timestamped backups
- Automatic backup directory creation
- Success / Failure validation
- Supports execution with sudo

Run:

```bash
sudo ./backup.sh
```

Verify:

```bash
ls -lh ~/backups

tar -tf ~/backups/<backup-file>.tar.gz | head
```

---

# 📜 Log Monitoring Script

Displays recent failed SSH login attempts.

Run:

```bash
sudo ./log_monitor.sh
```

Example Output:

```text
=====================================
 Linux Server Log Monitoring
=====================================

Last 10 failed SSH login attempts:
----------------------------------

=====================================
Monitoring completed.
=====================================
```

---

# 📸 Screenshots

The repository includes screenshots demonstrating:

- Ubuntu Server Installation
- Hostname Configuration
- System Information
- UFW Firewall
- SSH Hardening
- Fail2Ban
- Lynis Security Audit
- Health Check Script
- Backup Script
- Backup Verification
- Log Monitoring Script

> Replace the list above with embedded images after uploading your screenshots.

---

# 🎓 Skills Demonstrated

- Linux Administration
- Ubuntu Server
- Bash Scripting
- Server Hardening
- SSH Security
- Firewall Configuration
- Fail2Ban
- Security Auditing
- System Monitoring
- Backup Automation
- Log Analysis
- Linux Documentation

---

# 🚀 Future Improvements

- Cron-based automated backups
- Email alert notifications
- Logwatch integration
- ShellCheck validation
- SSH Key Authentication
- Automated security reporting
- GitHub Actions for script testing

---

# 👨‍💻 Author

**Zakaria**

GitHub:

```
https://github.com/YOUR_USERNAME
```

---

# ⭐ Project Status

**Completed**

This project was created as a portfolio project to demonstrate practical Linux administration, server hardening, monitoring, and Bash scripting skills for IT Support, Linux Administration, and Cybersecurity learning.
