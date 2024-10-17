# Heart Rate Monitoring System
![monitor_heart_rate-4](https://github.com/user-attachments/assets/e00238e6-07d4-4fe1-b2d9-be0301855760)
## Project Overview
This project aims to develop a system for **recording heart rate data**, **archiving logs**, and **backing them up to a remote server**. The project includes three main tasks, each implemented as a shell script:

»  **Heart Rate Monitoring Script**  ╰⪼   `heart_rate_monitor.sh`
»  **Log Archival Script**  ╰⪼   `archive_log.sh`
»  **Archival and Backup Script**  ╰⪼   `backup_archives.sh`

These scripts are part of the hospital’s system upgrade to improve patient monitoring and data management.
---
## Prerequisites and Setup Instructions
- A Unix/Linux environment with Bash installed (Pre-installed by Default).
- You should have git installed
- Clone the repository and switch to the project directory ⤵️
```
eke@ubuntu~$ git clone https://github.com/Mr-Eke/hospital_monitoring_group10.git
eke@ubuntu~$ cd hospital_monitoring_group10
```
### Task 2: Log Archival
This script archives the heart rate log file by renaming it with a timestamp.
- To archive the log file, run archive_log script » `./archive_log.sh`
   - The original `heart_rate_log.txt` will be renamed to `heart_rate_log.txt_YYYYMMDD_HHMMSS` with the timestamp of when the script was executed.
