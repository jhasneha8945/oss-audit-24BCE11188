OSS Audit — Git Version Control System
Student Information

Name: Sneha

Registration Number: 24BCE11188

Slot: B22

University: VIT Bhopal University

Chosen Software — Git

About This Project

This repository contains the complete submission for the Open Source Software
Capstone Project. The project involves a structured audit of Git — one of the
most widely used open-source tools in the world — covering its origin story,
licensing, Linux footprint, FOSS ecosystem, and a comparison with its
proprietary alternative.
The repository contains 5 shell scripts that demonstrate practical Linux
and Bash scripting skills as part of Units 1–5 of the course.

Chosen Software — Git

Script Descriptions

Script 1: System Identity Report (script1.sh)
Purpose: Establishes the identity of the auditor and the host environment.
It extracts core system metadata to ensure the audit environment is valid
and correctly licensed under GPL v2.
Concepts: Variables, Command Substitution ($()), formatting.

 Script 2: FOSS Package Inspector (script2.sh)
Purpose: Checks if Git is installed on the local Linux path. It retrieves
the version, license summary, and binary location of Git.
Concepts: if-then-else logic, command -v, string manipulation.

Script 3: Disk and Permission Auditor (script3.sh)
Purpose: Loops through critical system directories (/etc, /usr/bin, /var/log,
/home, /tmp) to audit disk usage and file-level permissions, ensuring Git
follows the Linux Filesystem Hierarchy Standard.
Concepts: for loops, du, ls -ld, awk.

Script 4: Log File Analyzer (script4.sh)
Purpose: Analyzes system logs to identify operational issues related to Git.
It counts occurrences of a specific keyword (e.g., "ERROR" or "WARNING")
within the log file.
Concepts: while-read loops, counter variables, grep filters.

 Script 5: Open Source Manifesto Generator (script5.sh)
Purpose: An interactive tool that collects user input to generate a
personalized open-source philosophy statement, which is then saved
to a permanent text file.
Concepts: read for user input, file redirection (>), string concatenation.

## How to Run the Scripts
1. Clone the Repository
```bash
git clone https://github.com/jhasneha8945/oss-audit-24BCE11188.git
cd oss-audit-24BCE11188
```

2. Set Executable Permissions
```bash
chmod +x *.sh
```

 3. Run the Scripts
```bash
./script1.sh
./script2.sh
./script3.sh
./script4.sh
./script5.sh
```
Dependencies
To ensure all scripts function correctly, the following should be
installed on your Linux/Ubuntu system:
.Bash Shell — Required to run all scripts. Pre-installed on most Linux distros.
.Git — Required for Script 2 (Package Inspector). Install with: `sudo apt install git`
.CoreUtils — Includes ls, du, awk, df used across scripts. Pre-installed on Linux.


