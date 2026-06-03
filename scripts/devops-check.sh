#!/usr/bin/env bash

VERBOSE=false
QUIET=false
OVERALL_STATUS=0
ACTION_FOUND=false

show_help(){
  echo "Usage: ./scripts/devops-check.sh [option]"
  echo
  echo "Options:"
  echo "  --help       Show help menu"
  echo "  --all        Run all checks"
  echo "  --git        Check Git availability and repo status"
  echo "  --internet   Check basic internet connectivity"
  echo "  --disk       Show disk usage"
  echo "  --memory     Show memory usage"
  echo "  --verbose    Show detailed output"
  echo "  --quiet      Show minimal output"
  echo
  echo "Examples:"
  echo "  ./scripts/devops-check.sh --help"
  echo "  ./scripts/devops-check.sh --all"
  echo "  ./scripts/devops-check.sh --verbose --all"
  echo "  ./scripts/devops-check.sh --quiet --git"
}

print_verbose() {
 if [ "$VERBOSE" = true ] && [ "$QUIET" = false ]; then
    echo "[INFO] $1"
 fi
}

pass(){
echo "[PASS] $1"
}

fail(){
echo "[FAIL] $1"
OVERALL_STATUS=1
}

check_git(){
  print_verbose "Checking if Git is installed..."

  if command -v git >/dev/null 2>&1; then
    pass "git is installed"
  else
    fail "git is not installed"
    return 1
  fi

print_verbose "Checking if current folder is a Git repository..."

  if git status >/dev/null 2>&1; then
    pass "Current folder is a Git repository"

    if [ "$VERBOSE" = true ] && [ "$QUIET" = false ]; then
#come back  --short condenct view of working directory.
      git status --short
    fi
  else
    fail "Current folder is not a Git repository"
    return 1
  fi
}
check_internet() {
  print_verbose "Checking internet connection..."

  if command -v curl >/dev/null 2>&1; then
	#I is header s is silent output
    if curl -Is https://www.google.com >/dev/null 2>&1; then
      pass "Internet check succeeded"
    else
      fail "Internet check failed"
      return 1
    fi
  elif command -v ping >/dev/null 2>&1; then
	#run only 1 packet 1 test
    if ping -c 1 8.8.8.8 >/dev/null 2>&1; then
      pass "Internet check succeeded"
    else
      fail "Internet check failed"
      return 1
    fi
  else
    fail "Neither curl nor ping is available"
    return 1
  fi
}

check_disk() {
  print_verbose "Checking disk usage with df -h..."

  if command -v df >/dev/null 2>&1; then
    pass "Disk check command is available"
#
    if [ "$QUIET" = false ]; then
      df -h
    fi
  else
    fail "df command is not available"
    return 1
  fi
}

check_memory() {
  print_verbose "Checking memory usage with free -h..."

  if command -v free >/dev/null 2>&1; then
    pass "Memory check command is available"

    if [ "$QUIET" = false ]; then
      free -h
    fi
  else
    fail "free command is not available"
    return 1
  fi
}

run_all_checks() {
  check_git
  check_internet
  check_disk
  check_memory
}

if [ "$#" -eq 0 ]; then
  show_help
  exit 1
fi
$OVERALL_STATUS
# First pass: read modifier flags
for arg in "$@"; do
  case "$arg" in
    --verbose)
      VERBOSE=true
      ;;
    --quiet)
      QUIET=true
      ;;
  esac
done

# Second pass: run action flags
for arg in "$@"; do
  case "$arg" in
    --help)
      show_help
      exit 0
      ;;
    --all)
      ACTION_FOUND=true
      run_all_checks
      ;;
    --git)
      ACTION_FOUND=true
      check_git
      ;;
    --internet)
      ACTION_FOUND=true
      check_internet
      ;;
    --disk)
      ACTION_FOUND=true
      check_disk
      ;;
    --memory)
      ACTION_FOUND=true
      check_memory
      ;;
    --verbose|--quiet)
      ;;
    *)
      echo "[FAIL] Invalid option: $arg"
      echo
      show_help
      exit 1
      ;;
  esac
done

if [ "$ACTION_FOUND" = false ]; then
  echo "[FAIL] No check option was selected"
  echo
  show_help
  exit 1
fi

exit "$OVERALL_STATUS"
	
