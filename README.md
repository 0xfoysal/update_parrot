# Parrot Update Script

This Bash script provides a convenient way to update Parrot OS repositories or pull updates from a Git repository. 

## Features
1. **Update Parrot OS Repositories**
   - Updates the system's package list.
   - Upgrades installed packages.
   - Removes unnecessary packages.
   
2. **Update a Git Repository**
   - Pulls the latest changes from the remote repository.

## Requirements
- A system running **Parrot OS** or a similar Linux distribution.
- **Git** installed (for updating Git repositories).
- Sudo privileges for updating system repositories.

## Usage
1. Clone or download this repository.
2. Make the script executable:
   ```bash
   chmod +x parrot_update.sh
3. Run the script
   ```
   ./parrot_update.sh
   ```
4. select an option from the menu
```
Choose an option:
    1. Update Parrot OS repositories
    2. Update a Git repository
    3. Exit
    Enter your choice (1/2/3):   
```


# 🚀 Super Fast Parrot OS Optimization

This guide helps you **optimize Parrot OS** for **maximum speed and performance** after installation. Follow these steps to remove bloatware, reduce system resource usage, and make your system blazing fast! 🔥

---

## ⚡ Quick Start

Run the following command to update your system:

```bash
sudo parrot-upgrade
```

Then follow the steps below to boost performance.

---

## 🛠 Optimization Steps

### 1️⃣ **Remove Unnecessary Services**
Disable unused services to free up resources:

```bash
systemctl list-unit-files --type=service --state=enabled
sudo systemctl disable --now bluetooth cups apache2
```

### 2️⃣ **Reduce Swap Usage**
Reduce swap tendency to improve performance:

```bash
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
sudo sysctl -p
```

### 3️⃣ **Remove Bloatware**
List and remove unnecessary packages:

```bash
sudo apt remove --purge libreoffice* thunderbird* -y
sudo apt autoremove -y && sudo apt clean
```

### 4️⃣ **Enable ZRAM (Better Memory Management)**

```bash
sudo apt install zram-tools -y
sudo systemctl enable --now zramswap.service
```

### 5️⃣ **Optimize Boot Time**
Reduce GRUB timeout for faster boot:

```bash
sudo sed -i 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=1/' /etc/default/grub
sudo update-grub
```

Disable unnecessary startup services:

```bash
sudo systemctl disable <service_name>
```

### 6️⃣ **Use a Faster Kernel (Liquorix Kernel)**

```bash
sudo apt install linux-liquorix-amd64 -y
sudo reboot
```

### 7️⃣ **Use a Faster DNS**

Edit `/etc/resolv.conf` and set:

```plaintext
nameserver 1.1.1.1
nameserver 8.8.8.8
```

Or install and enable **resolvconf**:

```bash
sudo apt install resolvconf -y
sudo systemctl enable --now resolvconf
```

### 8️⃣ **Install Preload for Faster App Launch**

```bash
sudo apt install preload -y
```

---

## 🚀 Enjoy Your Super-Fast Parrot OS! 🔥
After applying these tweaks, reboot your system:

```bash
sudo reboot
```


