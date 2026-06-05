# Task 1 – Network Scanning with Nmap

## Objective
Use Nmap to perform a TCP SYN scan on localhost, identify open ports, and enumerate running services.

## Environment
- OS: Ubuntu 22.04 (WSL2)
- Tool: Nmap 7.x

## Installation
```bash
sudo apt update && sudo apt install -y nmap
```

## Commands Used
```bash
sudo nmap -sS -sV 127.0.0.1 | tee nmap_scan.txt
```

## Results
See `nmap_scan.txt` for full output. Key findings:

| Port | State | Service | Version |
|------|-------|---------|---------|
| 22   | open  | SSH     | OpenSSH 8.x |
| (add your actual findings here) | | | |

## Key Takeaway
Even on a development machine, unexpected open ports can be an attack surface. This scan helps establish a baseline of what services should and should not be running.

## Screenshots
![Nmap install](images/01_nmap_install.png)
![Scan output](images/02_scan_output.png)
![Saved file](images/03_saved_file.png)

## How to Reproduce
```bash
sudo apt install nmap
sudo nmap -sS -sV 127.0.0.1 | tee nmap_scan.txt
```
