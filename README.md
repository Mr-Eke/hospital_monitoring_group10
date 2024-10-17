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
### Task 3: Archival and Remote Backup
This script moves the archived log files to a designated directory and backs them up to a remote server using SSH.
- **Set Up SSH Access:**
  - In this script `backup_archives.sh`, replace the SSH credentials (host and username) with your own remote server credentials.
- Run the script » `./backup_archives.sh` and provide the password to your remote server when prompted.

- **Check and Confirm Backup**:
  - Archived files will be moved to the `archived_logs_group10` and then securely copied to the home directory `/home/` of your remote server using `scp`. You can check the home directory of your remote server to confirm that the directory `archived_logs_group10` and its contents are there.

---  
## Group Session Attendance Report

We met several times during the development of this project. Below is a summary of attendance during group sessions:

| **Session**                                    | **Date (2024)**      | **Present**                                               | **Absent** |
|------------------------------------------------|---------------|-----------------------------------------------------------|------------|
| 1 ⮞ Understanding the tasks                | 08-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |
| 2 ⮞ Task 1 Implementation              | 10-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |
| 3 ⮞ Task 2 Implementation              | 13-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |
| 4 ⮞ Task 3 Implementation              | 12-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |
| 4 ⮞ Checks & Test running                  | 12-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |
| 5 ⮞ Documentation                      | 17-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |  
