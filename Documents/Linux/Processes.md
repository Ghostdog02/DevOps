- **Process** in Linux is any running instance of a program, identified by a unique Process ID (PID).
- **Service** is a special type of process designed to run continuously in the background, often without user interaction, to provide system or network functionality (e.g., SSH, web servers, or task scheduling).  Services are typically managed by system init systems like **systemd** and are configured to start automatically at boot, remain running, and be restarted if they fail.

- Show all process' usage for CPU and RAM 
	- `top`
		- load average - **Linux Load Average** is a metric that shows the average number of processes in the **runnable (running or waiting to run)** or **uninterruptible (waiting for I/O)** states over the past 1, 5, and 15 minutes.  It is displayed as three numbers:

			- **1-minute average** – recent system load
    
			- **5-minute average** – medium-term load
    
			- **15-minute average** – long-term load trend
	- `ps aux` 
		- Displays similar information to `top` but quits instead of listening live for processes.
		- PID - process id
		- PPID - parent process id
- check all the process with their parent process id - 
	- `ps -ef`
	- `ps -ef | grep httpd | grep -v 'grep'`
		- the third pipe is needed to exclude the grep search from the output
	- `ps -ef | grep [h]ttpd` 
		- Or this its shorter
		- Match only h followed by ttpd, thus exculding **grep httpd**
- Kill processes
	- `systemctl stop process`
	- `kill pid`
	- `kill -9 pid` - Forcefully kill only the process without its child processes
	- `ps -ef | grep [h]ttpd | awk '{print $2}' | sudo xargs kill -9`
		- `awk '{print $2}'`- gets second column from input
		- `sudo xargs kill -9` kills a list of processes
- Types of processes:
	- Orphaned: Parent process is killed, and child processes will be adopted mostly by pid 1. They wont serve much purpose but will still consume resources.
	- Zombie: Process which is dead but its entry is still in the process table. It is not consuming resources but it may create problems in the future.