# DevOps Learning Labs

This repository documents my hands-on DevOps, Linux, Git, Bash, and infrastructure learning journey.

My goal is to become employable in DevOps / Cloud / Infrastructure by building practical skills, documenting what I learn, and creating visible proof of work on GitHub.

---

## Learning Roadmap Progress

| Session | Topic | Status |
|---|---|---|
| Session 1 | Linux Terminal Navigation and Filesystem Basics | Completed |
| Session 2 | Linux File Viewing, Editing, Searching, and Basic Logs | Completed |
| Session 3 | Linux Permissions, Ownership, Users, and Groups | Completed |
| Session 4 | Linux Processes, Services, and System Monitoring | Completed |
| Session 5 | Linux Networking Fundamentals | Completed |
| Session 6 | Git and GitHub Fundamentals | Completed |
| Session 7 | Git Branches, `.gitignore`, and Documentation | Completed |
| Session 8 | Bash Scripting Fundamentals | Completed |
| Session 9 | GitHub Authentication with SSH | Completed |

---

## Session Summaries

## Session 1 — Linux Terminal Navigation and Filesystem Basics

In this session, I practiced basic Linux terminal navigation and filesystem commands.

### Commands practiced

- `pwd`
- `ls`
- `cd`
- `mkdir`
- `touch`
- `cp`
- `mv`
- `rm`
- `clear`
- `history`

### What I learned

I learned how to move around the Linux filesystem, create files and directories, copy and move files, rename files, delete files, and understand basic directory structure.

I also learned:

- `.` means the current directory
- `..` means the parent directory
- Hidden files usually start with a dot, like `.bashrc`

### Employment connection

This is the foundation for working on Linux servers, cloud instances, containers, and infrastructure environments.

---

## Session 2 — Linux File Viewing, Editing, Searching, and Basic Logs

In this session, I practiced viewing, editing, and searching files in Linux.

### Commands practiced

- `cat`
- `less`
- `head`
- `tail`
- `tail -f`
- `nano`
- `grep`
- `find`
- `wc`
- `echo`
- `touch`
- `mkdir`

### What I learned

I learned how to inspect files, read logs, search for text inside files, find files in the filesystem, and edit files using `nano`.

### Employment connection

DevOps and infrastructure roles require reading logs, troubleshooting services, checking configuration files, and searching through system output quickly.

---

## Session 3 — Linux Permissions, Ownership, Users, and Groups

In this session, I learned how Linux permissions work.

### Commands practiced

- `ls -l`
- `chmod`
- `chown`
- `whoami`
- `id`
- `groups`
- `sudo`
- `useradd`
- `usermod`
- `groupadd`

### What I learned

I learned the basics of:

- File permissions
- Read, write, and execute permissions
- File ownership
- Users and groups
- Why permissions matter for system security

### Employment connection

Permissions are important in Linux administration, server security, CI/CD runners, shared systems, and production environments.

---

## Session 4 — Linux Processes, Services, and System Monitoring

In this session, I practiced checking running processes and system resource usage.

### Commands practiced

- `ps`
- `top`
- `htop`
- `kill`
- `systemctl`
- `journalctl`
- `df`
- `du`
- `free`
- `uptime`

### What I learned

I learned how to check what is running on a Linux system, inspect services, view logs, and monitor CPU, memory, and disk usage.

### Employment connection

DevOps engineers need to troubleshoot services, check resource usage, restart services, and understand why systems are slow or failing.

---

## Session 5 — Linux Networking Fundamentals

In this session, I practiced beginner Linux networking commands.

### Commands practiced

- `ip addr`
- `ping`
- `curl`
- `wget`
- `ss`
- `netstat`
- `traceroute`
- `nslookup`
- `dig`

### What I learned

I learned the basics of IP addresses, ports, DNS, network connectivity, and checking whether services are reachable.

### Employment connection

Networking is important for cloud infrastructure, servers, containers, APIs, firewalls, load balancers, and troubleshooting production systems.

---

## Session 6 — Git and GitHub Fundamentals

In this session, I learned the basics of Git and GitHub.

### Commands practiced

- `git init`
- `git status`
- `git add`
- `git commit`
- `git log`
- `git remote`
- `git push`
- `git pull`
- `git clone`

### What I learned

I learned how Git tracks changes, how commits work, how to connect a local repo to GitHub, and how to push code to a remote repository.

### Employment connection

Git is required for almost every DevOps, Cloud, Infrastructure, and software engineering role.

---

## Session 7 — Git Branches, `.gitignore`, and Documentation

In this session, I practiced cleaner Git workflows.

### Commands and topics practiced

- `git branch`
- `git checkout`
- `git switch`
- `git merge`
- `.gitignore`
- README documentation
- Clean commit messages

### What I learned

I learned how branches help separate work, how `.gitignore` prevents unnecessary files from being committed, and why documentation matters in a professional repo.

### Employment connection

Professional teams use branches, pull requests, `.gitignore`, documentation, and clean commits every day.

---

## Session 8 — Bash Scripting Fundamentals

In this session, I learned beginner Bash scripting.

### Topics practiced

- Creating `.sh` files
- Running Bash scripts
- Using `chmod +x`
- Variables
- `echo`
- Basic script structure
- Simple automation

### What I learned

I learned how Bash scripts can automate repeated terminal commands. I also learned that scripts should be simple, readable, and safe.

### Employment connection

Bash scripting is useful in DevOps for automation, server setup, log checks, deployments, and repeated operational tasks.

---

## Session 9 — GitHub Authentication with SSH

In this session, I fixed a real GitHub workflow problem: GitHub was asking me to re-enter my token when pushing code.

I learned that this happens when a repository uses an HTTPS remote. With HTTPS, GitHub may ask for a username and token during authentication. Instead of storing a token in a Bash script, I learned the safer DevOps approach: using SSH authentication.

### Commands practiced

- `git remote -v`
- `ssh -V`
- `ls ~/.ssh`
- `ssh-keygen`
- `cat ~/.ssh/id_ed25519.pub`
- `ssh -T git@github.com`
- `git remote set-url origin git@github.com:USERNAME/REPO.git`
- `git push`
- `git status`

### What I learned

I learned:

- Why GitHub asks for a token when using HTTPS
- The difference between HTTPS and SSH Git remotes
- Why storing tokens in scripts is unsafe
- How SSH keys solve repeated authentication prompts
- How to check my current Git remote
- How to create or verify an SSH key
- How to add a public SSH key to GitHub
- How to test SSH authentication
- How to change my repo remote from HTTPS to SSH
- How to push without re-entering my token

### Security lesson

I learned that tokens, passwords, and private SSH keys should never be stored in scripts, committed to GitHub, or shared publicly.

Safe authentication should be handled through tools like:

- SSH keys
- Git Credential Manager
- GitHub CLI

For this session, I used SSH authentication because it is a common and professional Git workflow used in DevOps, Cloud, Infrastructure, and CI/CD environments.

### Employment connection

This session helped me practice secure developer workflow habits. It shows that I understand basic Git authentication, secret safety, SSH keys, and professional documentation habits.

This is important for DevOps because engineers often work with private repositories, CI/CD pipelines, deployment keys, cloud credentials, and automation scripts. Knowing how to avoid exposing secrets is a core security skill.

---

## GitHub Portfolio Habit

For every session, I aim to document:

- What I practiced
- What commands I used
- What I learned
- Why it matters for employment
- Any scripts, notes, or configuration files created
- Clean commit messages

The goal of this repo is to show consistent hands-on learning and professional GitHub habits.

---

## Clean Commit Message Examples

Good commit messages:

```bash
git commit -m "Add Session 1 Linux navigation notes"
git commit -m "Add Session 2 file viewing and search notes"
git commit -m "Add Session 3 Linux permissions notes"
git commit -m "Add Session 4 process monitoring notes"
git commit -m "Add Session 5 networking fundamentals notes"
git commit -m "Add Session 6 Git fundamentals notes"
git commit -m "Add Session 7 branch and gitignore notes"
git commit -m "Add Session 8 Bash scripting notes"
git commit -m "Document GitHub SSH authentication setup"
