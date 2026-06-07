# Task 2 – Firewall Configuration with UFW

## Objective
Configure a host-based firewall using UFW (Uncomplicated Firewall) on Ubuntu to enforce a default-deny policy while allowing only necessary services.
## Environment
- OS: Ubuntu 22.04 (WSL2)
- Tool: UFW (Uncomplicated Firewall)

> **Note:** UFW in WSL2 shows rule configuration but kernel-level enforcement requires a full Linux environment. The configuration steps and logic demonstrated here apply directly to any production Ubuntu server.

## Commands Used
```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22/tcp comment 'SSH'
sudo ufw allow 80/tcp comment 'HTTP'
sudo ufw allow 443/tcp comment 'HTTPS'
sudo ufw enable
sudo ufw status verbose | tee ufw_status.txt
```

## Firewall Rules Configured

| Port | Protocol | Policy | Reason |
|------|----------|--------|--------|
| Default | All     | DENY IN | Block all unsolicited traffic |
| 22   | TCP      | ALLOW  | Secure shell access |
| 80   | TCP      | ALLOW  | Web traffic (HTTP) |
| 443  | TCP      | ALLOW  | Web traffic (HTTPS) |

## Key Takeaway
A default-deny firewall policy is one of the most impactful, low-cost hardening measures for any Linux host. It ensures that only explicitly permitted traffic can reach open services.

## Screenshots
![UFW install](images/01_ufw_install.png)
![Rules added](images/02_rules_added.png)
![UFW status](images/03_ufw_status.png)

## How to Reproduce
```bash
sudo apt install ufw
sudo ufw default deny incoming && sudo ufw default allow outgoing
sudo ufw allow 22/tcp && sudo ufw allow 80/tcp && sudo ufw allow 443/tcp
sudo ufw enable && sudo ufw status verbose
```
