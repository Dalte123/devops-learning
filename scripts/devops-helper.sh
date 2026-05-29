#!/bin/bash

COMMAND="$1"

show_help() {
  echo "Usage: ./scripts/devops-helper.sh [option]"
  echo ""
  echo "Options:"
  echo "  help     Show this help message"
  echo "  status   Show basic system and repo status"
  echo "  disk     Show disk usage"
  echo "  memory   Show memory usage"
  echo "  logs     Show recent system logs if available"
}

#2 is the error stream if there are errors we will redirect it to /dev/null.
check_git_repo() {
	git status 2>/dev/null
}

show_status(){
	echo "Current user:"
	whoami

	echo ""
	echo "System uptime:"
	uptime

	echo ""
	echo "Current directory:"
	pwd

	echo ""
	echo "Git status:"
	check_git_repo || echo "Not inside a Git repository."
}

show_disk(){
	echo "Disk usage:"
	df -h
}


show_memory(){
	echo "Memory usage:"
	free -h
}

show_logs(){
	echo "Recent system logs:"
	journalctrl -n 10 --no-pager 2>/dev/null || echo "journalctl is not available or no logs were found. This may happen on WSL."
}

case "$1" in
  help|"")
	show_help
	;;
  status)
	show_status
	;;
  disk)
	show_disk
	;;
  memoery)
	show_memory
	;;
  logs)
	show_logs
	;;
  *)
	echo "Unknown option: $1"
        echo ""
        show_help
        exit 1
        ;;
esac
