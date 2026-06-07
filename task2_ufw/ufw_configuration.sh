# Install (usually pre-installed)
sudo apt install -y ufw

# Set default policies (deny incoming, allow outgoing)
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow essential ports
sudo ufw allow 22/tcp comment 'SSH'
sudo ufw deny 80/tcp comment 'HTTP'

# Enable and check status
sudo ufw enable
sudo ufw status verbose | tee task2_ufw/ufw_status.txt
