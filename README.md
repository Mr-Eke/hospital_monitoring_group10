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
### Task 1: Heart Rate Monitoring
- To record the heart rate from a device into a logfile, execute this script: `./heart_rate_monitor.sh`
- Enter a recording device name when you get this prompt: _"Enter device name (e.g., "Monitor_A", "Monitor_B"):"_
- **Background Process:**
  - The script will start executing in a separate process in the background, and the Process ID (PID) will be displayed, which you can use to manage the execution of this script.
To check the log output, use: `tail -f heart_rate_log.txt`
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
  - Archived files will be moved to the `archived_logs_group10` directory and then securely copied to the home directory `/home/` of your remote server using `scp`. You can check the home directory of your remote server to confirm that the directory `archived_logs_group10` and its contents are there.

---
## Group Session Attendance Report

We met several times for the development of this project. Below is a summary of attendance for our sessions ⤵️

| **Session**                                    | **Date (2024)**      | **Present**                                               | **Absent** |
|------------------------------------------------|---------------|-----------------------------------------------------------|------------|
| 1 ⮞ Understanding the tasks                | 08-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |
| 2 ⮞ Task 1 Implementation              | 10-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |
| 3 ⮞ Task 2 Implementation              | 13-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |
| 4 ⮞ Task 3 Implementation              | 12-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |
| 4 ⮞ Checks & Test running                  | 12-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |
| 5 ⮞ Documentation                      | 17-Oct    | Azalie, HonourGod, Chiagoziem, Shalom, Jolly, Olive        | None       |

## Contact Information
For any questions or more clarity, please contact these awsome contributors ⤵️
- Olive Umurerwa » [Email](o.umurerwa@alustudent.com) | [Github](https://github.com/Umurerwa3)
- Azalie Oyim Oga » [Email](a.oga@alustudent.com) | [Github](https://github.com/Az-oga)
- Shalom Amaliza » [Email](s.amaliza@alustudent.com) | [Github](https://github.com/amaliza-shal)
- Chiagoziem Eke » [Email](c.eke@alustudent.com) | [Github](https://github.com/Mr-Eke)
- Jolly Burabyo Gift » [Email](j.burabyo@alustudent.com) | [Github](https://github.com/Burabyo)
- HonourGod Levison » [Email](h.levison@alustudent.com) | [Github](https://github.com/H-levison)
---
_Thank you, and I hope you enjoyed using our **Heart Rate Monitoring System**!_ 😅
