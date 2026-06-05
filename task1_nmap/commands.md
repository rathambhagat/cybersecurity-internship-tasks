# Basic SYN scan on localhost (fastest, lists open TCP ports)
sudo nmap -sS 198.168.x.x
# Save output to file AND view it in terminal at the same time
sudo nmap -sS -sV 198.168.x.x | tee task1_nmap/nmap_scan.txt
# Service version + OS detection (more thorough)
sudo nmap -sV -O 198.168.x.x | tee -a task1_nmap/nmap_scan.txt
