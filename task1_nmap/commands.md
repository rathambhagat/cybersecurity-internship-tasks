# Basic SYN scan on localhost (fastest, lists open TCP ports)
sudo nmap -sS scanme.nmap.org
# Save output to file AND view it in terminal at the same time
sudo nmap -sS -sV scanme.nmap.org | tee task1_nmap/nmap_scan.txt
# Service version + OS detection (more thorough)
sudo nmap -sV -O scanme.nmap.org | tee -a task1_nmap/nmap_scan.txt
