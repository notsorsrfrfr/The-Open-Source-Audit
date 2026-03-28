# The-Open-Source-Audit


# OSS Audit — Blender
**Student Name:** Sanidhya Raj 
**Course:** Open Source Software  
**Chosen Software:** Blender (GPL v2+)

---

## About This Project
This repository contains shell scripts submitted as part of
the Open Source Software Capstone Project. The audit focuses
on Blender — a free and open source 3D creation suite
licensed under the GNU General Public License v2 or later.

---

## Scripts Overview

| Script | Filename | Description |
|--------|----------|-------------|
| Script 1 | `script1_system_identity.sh` | Displays system info, kernel version, uptime and Blender license |
| Script 2 | `script2_package_inspector.sh` | Checks if Blender is installed and prints philosophy note |
| Script 3 | `script3_disk_auditor.sh` | Audits system directories for permissions and disk usage |
| Script 4 | `script4_log_analyzer.sh` | Analyzes log files and counts keyword occurrences |
| Script 5 | `script5_manifesto_generator.sh` | Generates a personalized open source manifesto |

---

## How to Run the Scripts

### Prerequisites
- Ubuntu Linux or any Debian-based system
- Blender installed: `sudo apt install blender`
- Bash shell

### Step 1 — Clone this repository
```bash
git clone https://github.com/yourusername/oss-audit-22BCE1234.git
cd oss-audit-22BCE1234
```

### Step 2 — Give execute permission to all scripts
```bash
chmod +x *.sh
```

### Step 3 — Run each script

**Script 1 — System Identity Report**
```bash
./script1_system_identity.sh
```

**Script 2 — Package Inspector**
```bash
./script2_package_inspector.sh
```

**Script 3 — Disk Auditor**
```bash
./script3_disk_auditor.sh
```

**Script 4 — Log Analyzer**
```bash
./script4_log_analyzer.sh /var/log/syslog error
```

**Script 5 — Manifesto Generator**
```bash
./script5_manifesto_generator.sh
```

---

## Dependencies
- `bash` — Shell interpreter
- `dpkg` — Package management
- `blender` — Main software being audited
- `git` — Version control

---

## License
These scripts are released under the 
GNU General Public License v2 or later — 
consistent with Blender's own license.
```

