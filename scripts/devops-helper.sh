#!/bin/bash

COMMAND="$1"

show_help() {
  echo "Usage: ./scripts/devops-helper.sh [option]"
  echo
  echo "Options:"
  echo "  help     Show this help message"
  echo "  status   Show basic system and repo status"
  echo "  disk     Show disk usage"
  echo "  memory   Show memory usage"
  echo "  logs     Show recent system logs if available"
}

case "$COMMAND" in
	help|"")
	show_help

	;;

	status)
	echo "User:"
	whoami
	echo

	echo "System uptime:"
	uptime
	echo

	echo "Current directory"
	pwd
	echo

	if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
	 echo "Git status:"
	 git status
	else
	 echo "Not inside a Git repo."
	fi
	;;

	disk)
	 echo "Disk usage:"
	 df -h
	;;
	
	memory)
	 echo "Memory usage:"
	 free -h
	;;

	logs)
	 echo "Recent logs:"
	if  command -v journalctl > /dev/null 2>&1; then
	 journalctl -n 10 --no-pager
	else
	 echo "journalctl is not available on this system."
         echo "This can happen on WSL or minimal Linux environments."
	fi
	;;
	
	*)
	echo "ERROR: unknown option '$COMMAND'"
	echo
	show_help
	exit 1
	;;
esac
