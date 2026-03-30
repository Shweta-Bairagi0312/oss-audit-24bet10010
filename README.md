# OSS Audit – Python
Open Source Software Capstone Project | OSS NGMC Course

## Student Details

| Field               | Details              |
|--------------------|---------------------|
| Student Name       | Sweta Bairagi       |
| Registration Number| 24BET10010          |
| Slot               | A13                 |
| Software Audited   | Python Programming Language |
| License            | Python Software Foundation License v2 (PSF-2.0) |
| Course             | Open Source Software (Units 1–5) |

---

About This Project
This repository contains all deliverables for The Open Source Audit capstone project. The subject of the audit is Python — one of the world's most widely used open-source programming languages, first released by Guido van Rossum in 1991 under a permissive free software licence.

The project examines Python's origin story, its licensing model, its footprint on a Linux system, the FOSS ecosystem surrounding it, and a critical comparison against its proprietary counterpart (MATLAB).

oss-audit-24bet10010/
├── README.md
├── manifesto_sweta.txt
├── script1.sh
├── script2.sh
├── script3.sh
├── script4.sh
└── script5.sh

The project report PDF is submitted separately via the VITyarthi portal.

Script Descriptions
Script 1 — System Identity Report
File: script1.sh

Displays a formatted welcome screen showing the Linux distribution name, kernel version, currently logged-in user, home directory, system uptime, current date and time, and the open-source licence covering the OS.

Shell concepts used: Variables, command substitution $(...), echo, grep -qi for string matching, output formatting with printf.

Script 2 — FOSS Package Inspector
File: script2.sh

Detects whether the system uses RPM or Debian packaging, checks if Python 3 is installed, displays its version and licence information, and uses a case statement to print a one-line philosophy note about the package.

Shell concepts used: if-then-else, case statement, rpm -qi / dpkg -l, pipe with grep, command -v for binary detection.

Script 3 — Disk and Permission Auditor
File: script3.sh

Iterates through a predefined list of important Linux system directories using a for loop. For each directory it reports permissions, owner, group, and disk usage. Also checks Python-specific installation directories using glob expansion.

Shell concepts used: for loop, array iteration ${DIRS[@]}, ls -ld, awk for field extraction, du -sh, glob patterns.

Script 4 — Log File Analyzer
File: script4.sh

Accepts a log file path and keyword as command-line arguments. Reads the file line by line using a while read loop, counts lines containing the keyword, and prints the last 5 matching lines. Includes a do-while style retry loop if the file is empty, and falls back to a demo log file if no system log is accessible.

Shell concepts used: while IFS= read -r, if-then inside loop, counter variables $((COUNT + 1)), positional arguments $1 / $2, -f and -s file tests.

Script 5 — Open Source Manifesto Generator
File: script5.sh

Asks the user three interactive questions and weaves their answers into a personalised open-source philosophy statement. Saves the output to a .txt file named after the current user. Demonstrates the alias concept in comments.

Shell concepts used: read -p for interactive input, string concatenation, file output > and >>, date command, helper functions, cat to display the file.

How to Run the Scripts on Linux
Prerequisites
A Linux system (Ubuntu, Debian, Fedora, CentOS, Arch, or any other distribution)
Bash shell (pre-installed on all Linux distributions)
Python 3 installed (for Script 2 to detect): sudo apt install python3 or sudo dnf install python3
bc utility for Script 4 percentage calculation: sudo apt install bc

Step-by-step Setup
# 1. Clone the repository
git clone https://github.com/yourusername/oss-audit-24bet10010.git
cd oss-audit-24bet10010

# 2. Make all scripts executable
chmod +x script1.sh
chmod +x script2.sh
chmod +x script3.sh
chmod +x script4.sh
chmod +x script5.sh

Running Each Script
# Script 1 — System Identity Report
./script1.sh

# Script 2 — FOSS Package Inspector
./script2.sh

# Script 3 — Disk and Permission Auditor
./script3.sh

# Script 4 — Log File Analyzer
# Usage: ./script4.sh <logfile> [keyword]
./script4.sh /var/log/syslog error
./script4.sh /var/log/auth.log WARNING

# Script 5 — Open Source Manifesto Generator (interactive)
./script5.sh

Note: Script 4 requires a readable log file. On systems where /var/log/syslog requires root access, run with sudo ./script4.sh /var/log/syslog or point it to a log file your user can read.

Dependencies

| Dependency | Purpose | Install |
|-----------|--------|---------|
| bash | Run all scripts | Pre-installed on all Linux |
| python3 | Detected by Script 2 | sudo apt install python3 |
| bc | Percentage in Script 4 | sudo apt install bc |
| rpm or dpkg | Package inspection in Script 2 | Pre-installed on RPM/DEB systems |
| du, ls, awk | Directory audit in Script 3 | Pre-installed (GNU coreutils) |
| grep, tail, wc | Log analysis in Script 4 | Pre-installed (GNU coreutils) |

Software Audited: Python

| Property | Detail |
|----------|--------|
| Full Name | CPython (reference implementation) |
| First Release | February 1991 |
| Creator | Guido van Rossum |
| Current Version | Python 3.12.x (as of 2024) |
| Licence | PSF License v2 — spdx.org/licenses/PSF-2.0.html |
| Source Code | github.com/python/cpython |
| Official Site | python.org |
| Governed by | Python Software Foundation (PSF) + Steering Council |

Licence
The shell scripts in this repository are original work submitted as part of an academic project.
The Python software itself is licenced under the PSF License v2.

Submitted via VITyarthi portal as part of the OSS NGMC Capstone Project.
