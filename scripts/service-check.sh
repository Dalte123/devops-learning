#!/bin/bash

failures=0

print_pass(){
  echo "[PASS] $1"

}

print_fail(){
  echo "[FAIL] $1"
  failures=$((failures + 1))

}

check_command() {
    command_name="$1"

    if command -v "$command_name" > /dev/null 2>&1; then
        print_pass "$command_name is installed"
    else
        print_fail "$command_name is not installed"
    fi
}


check_git_repo() {

if git status > /dev/null 2>&1; then
   print_pass "Current folder is a Git repository"
else
   print_fail "Current folder is not a Git repository"
fi

}


check_internet() {
    if ping -c 1 google.com > /dev/null 2>&1; then
        print_pass "Internet/DNS check passed"
    elif curl -I https://example.com > /dev/null 2>&1; then
        print_pass "Internet check passed using curl"
    else
        print_fail "Internet/DNS check failed"
    fi
}


echo "Starting service checks..."
echo "--------------------------"

check_command "git"
check_command "bash"
check_command "curl"
check_command "ping"

check_git_repo
check_internet

echo "--------------------------"
echo "Checks complete."
echo "Failures: $failures"


if [ "$failures" -eq 0 ]; then
   echo "Result: PASS"
   exit 0
else
   echo "Result: FAIL"
   exit 1
fi












