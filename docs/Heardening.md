# Linux Server Hardening

## Overview

This document describes the hardening steps applied to the Ubuntu Server.

## SSH Hardening

- Disabled root login
- Limited authentication attempts
- Reduced login timeout
- Password authentication remains enabled for lab purposes

## UFW Firewall

- Enabled firewall
- Allowed SSH
- Denied unnecessary inbound traffic

## Fail2Ban

- Installed and configured sshd jail
- Protected against brute-force attacks

## Lynis Audit

- Performed a security audit
- Reviewed warnings and recommendations
- Improved the hardening index after applying fixes

## Result

The server is significantly more secure than the default Ubuntu installation.
