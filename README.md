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
| Session 10 | Bash Script Safety, Environment Variables, and `.gitignore` | Completed |
| Session 11 | Bash Arguments, User Input, and Safer Script Execution | Completed |
| Session 12 | Bash Case Statements, Script Menus, and Command Options | Completed |
| Session 13 | Bash Functions, Reusable Code, and Script Cleanup | Completed |
| Session 14 | Bash Loops, Repeated Checks, and Simple Automation | Completed |
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

## Session 10 — Bash Script Safety, Environment Variables, and `.gitignore`

In this session, I learned how to write safer Bash scripts and how to avoid committing sensitive files to GitHub.

This session built directly on Session 9. In Session 9, I learned not to store GitHub tokens in scripts. In Session 10, I learned how `.gitignore`, environment variables, and `.env` files are used to separate configuration from code.

### Commands practiced

- `nano .gitignore`
- `touch .env`
- `nano .env`
- `nano .env.example`
- `export APP_ENV=dev`
- `echo $APP_ENV`
- `printenv`
- `chmod +x scripts/check-env.sh`
- `./scripts/check-env.sh`
- `git status`
- `git add`
- `git commit`
- `git push`

### Files created or changed

- `.gitignore`
- `.env`
- `.env.example`
- `scripts/check-env.sh`
- `sessions/session-10-bash-script-safety-env-gitignore.md`
- `README.md`

### What I learned

I learned:

- `.gitignore` tells Git which files to ignore
- `.env` files are commonly used for local environment variables
- `.env` files can contain sensitive values and should not be committed
- `.env.example` is safe to commit because it only contains placeholder values
- Environment variables allow scripts to use configuration without hardcoding secrets
- Bash scripts should check whether required variables exist before continuing
- `git status` should be checked before every commit to avoid accidentally committing sensitive files

### Security lesson

I learned that real secrets should never be committed to GitHub.

Examples of secrets include:

- Passwords
- API keys
- GitHub tokens
- Private SSH keys
- Cloud access keys
- Database credentials
- Secret `.env` files

A safe pattern is:

- Keep real secrets in `.env`
- Add `.env` to `.gitignore`
- Commit `.env.example` with fake placeholder values
- Use environment variables inside scripts
- Check `git status` before committing

### Example `.gitignore` lesson

The `.gitignore` file can protect sensitive or unnecessary files from being tracked by Git.

Example:

```bash
.env
*.log
__pycache__/
node_modules/
```

### Employment connection

This session helped me understand safer scripting habits, environment variables, and secret protection. These are important in DevOps because engineers often work with credentials, cloud keys, config files, and automation scripts.

---

## Session 11 — Bash Arguments, User Input, and Safer Script Execution

In this session, I practiced writing Bash scripts that accept command-line arguments and safely validate user input.

### What I practiced

- `$1` for the first argument
- `$2` for the second argument
- `$@` for all arguments
- `read -p` for interactive user input
- checking missing arguments
- writing usage messages
- using `case` statements
- using `exit 1` for safe script failure
- creating files with Bash scripts
- preventing accidental file overwrite

### Mini-project

I created:

```bash
scripts/create-session-file.sh
```

### What I learned

I learned how Bash scripts can accept input from the command line and use that input to perform actions.

I also learned how to make scripts safer by checking for missing arguments, showing usage messages, and avoiding accidental file overwrites.

### Employment connection

This is useful in DevOps because many automation scripts accept arguments, validate input, and run different actions depending on what the user provides.

---

## Session 12 — Bash Case Statements, Script Menus, and Command Options

In this session, I learned how to use Bash `case` statements to build command-style scripts.

### What I practiced

- `case` statements
- `esac`
- `$1` command-line arguments
- `;;` inside case blocks
- help/usage messages
- invalid command handling
- `exit 1`
- `df -h`
- `free -h`
- `uptime`
- `journalctl`
- making scripts executable with `chmod +x`

### Mini-project

I created:

```bash
scripts/devops-helper.sh
```

The script accepts options like:

```bash
./scripts/devops-helper.sh help
./scripts/devops-helper.sh status
./scripts/devops-helper.sh disk
./scripts/devops-helper.sh memory
./scripts/devops-helper.sh logs
```

### What I learned

I learned how to make Bash scripts more organized and user-friendly by using command options.

Instead of creating multiple scripts for different checks, I built one helper script that runs different actions based on the option provided.

### DevOps connection

This script automates common system-check commands and gives me practice building simple operational tools.

It also shows how scripts can safely handle user input and invalid options.

### Employment connection

This session shows that I can write basic Bash automation, understand command options, use `case` statements, and build simple operational helper scripts.

### Status

Completed

## Session 13 — Bash Functions and Script Cleanup

In this session, I learned how to use Bash functions to make scripts cleaner and easier to maintain. I improved my `devops-helper.sh` script by organizing the help, status, disk, memory, and logs commands into separate functions.

DevOps connection:

Functions help make automation scripts easier to read, reuse, troubleshoot, and maintain. This is important because DevOps scripts often grow over time and need to stay understandable for other engineers.

Commands practiced:

```bash
chmod +x scripts/devops-helper.sh
./scripts/devops-helper.sh help
./scripts/devops-helper.sh status
./scripts/devops-helper.sh disk
./scripts/devops-helper.sh memory
./scripts/devops-helper.sh logs
git status
git add
git commit
git push

## Session 14 — Bash Loops, Repeated Checks, and Simple Automation

In this session, I learned how to use Bash loops to automate repeated checks.

I practiced:

- `for` loops
- `while` loops
- repeated command execution
- avoiding infinite loops
- saving output to report files
- using `>` and `>>`
- checking Git status inside a script

I created a script called:

```bash
scripts/system-report.sh
