# OSS Audit – Python Open Source Software Capstone Project | OSS NGMC Course

## Student Details

| Field | Details |
|------|--------|
| Student Name | Sweta Bairagi |
| Registration Number | 24BET10010 |
| Slot | A13 |
| Software Audited | Python Programming Language |
| License | Python Software Foundation License v2 (PSF-2.0) |
| Course | Open Source Software (Units 1–5) |

---

## About This Project

This repository contains all deliverables for the Open Source Audit capstone project.

The subject of the audit is Python — one of the world's most widely used open-source programming languages, first released by Guido van Rossum in 1991 under a permissive free software licence.

The project examines Python's origin story, its licensing model, its footprint on a Linux system, the FOSS ecosystem surrounding it, and a critical comparison against its proprietary counterpart (MATLAB).

---

## Repository Contents
oss-audit-24BET10010/
├── README.md ← This file
├── manifesto_sweta.txt ← Generated manifesto file
├── script1.sh ← Script 1: System Identity Report
├── script2.sh ← Script 2: FOSS Package Inspector
├── script3.sh ← Script 3: Disk & Permission Auditor
├── script4.sh ← Script 4: Log File Analyzer
└── script5.sh ← Script 5: Open Source Manifesto Generator


The project report PDF is submitted separately via the VITyarthi portal.

---

## Script Descriptions

### Script 1 — System Identity Report
**File:** `script1.sh`

Displays a formatted welcome screen showing:
- Linux distribution name
- Kernel version
- Currently logged-in user
- Home directory
- System uptime
- Current date and time
- Open-source licence covering the OS

**Shell concepts used:** Variables, command substitution `$(...)`, echo, `grep -qi`, formatted output using `printf`.

---

### Script 2 — FOSS Package Inspector
**File:** `script2.sh`

- Detects RPM or Debian packaging
- Checks if Python 3 is installed
- Displays version and licence information
- Uses a case statement to print a one-line philosophy note

**Shell concepts used:** `if-then-else`, `case`, `rpm -qi`, `dpkg -l`, `grep`, `command -v`.

---

### Script 3 — Disk and Permission Auditor
**File:** `script3.sh`

- Iterates through important Linux system directories
- Reports permissions, owner, group, and disk usage
- Checks Python-specific installation directories

**Shell concepts used:** `for` loop, arrays `${DIRS[@]}`, `ls -ld`, `awk`, `du -sh`, glob patterns.

---

### Script 4 — Log File Analyzer
**File:** `script4.sh`

- Accepts a log file path and keyword as command-line arguments
- Reads the file line by line
- Counts lines containing the keyword
- Prints the last 5 matching lines
- Includes retry loop and fallback demo log

**Shell concepts used:** `while read`, `if-then`, counters `$(( ))`, positional arguments `$1 / $2`, `-f`, `-s`.

---

### Script 5 — Open Source Manifesto Generator
**File:** `script5.sh`

- Asks the user three interactive questions
- Generates a personalized open-source philosophy statement
- Saves output to a `.txt` file

**Shell concepts used:** `read -p`, string concatenation, `>`, `>>`, `date`, functions, `cat`.

---

## How to Run the Scripts on Linux

### Prerequisites

- Linux system (Ubuntu, Debian, Fedora, CentOS, Arch, etc.)
- Bash shell (pre-installed)
- Python 3:
  ```bash
  sudo apt install python3
