# Git Authentication Safety Notes

## Purpose

These notes explain what I learned about GitHub authentication, SSH keys, and secret safety.

The main lesson from this session is:

> Do not solve authentication problems by storing tokens, passwords, or private keys inside scripts.

Authentication should be handled securely through proper tools like SSH keys, Git Credential Manager, or GitHub CLI.

---

## HTTPS vs SSH Git Remotes

Git repositories can connect to GitHub using different remote URL formats.

### HTTPS remote example

```bash
https://github.com/USERNAME/REPO.git
