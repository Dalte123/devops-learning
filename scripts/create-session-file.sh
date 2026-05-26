#!/bin/bash

show_usage(){
	echo "Usage: ./scripts/create-session-file.sh <session-number> <session-title>"
	echo
  	echo "Example:"
  	echo "./scripts/create-session-file.sh 11 \"Bash Arguments User Input\""
}

 case "$1" in
	-h|--help)
	show_usage
	exit 0
	;;
esac 

if [ -z "$1" ]; then 
	echo "Error: missing session number."
	show_usage
	exit 1
fi

SESSION_NUMBER="$1"

shift

if [ -z "$*" ]; then 
	echo "Eroor: missing session title."
	show_usage
	exit 1
fi

SESSION_TITLE="$*"

case "$SESSION_NUMBER" in
	*[!0-9]*)
	echo "Error: session number must contain only numbers."
	exit 1
	;;
esac

SAFE_TITLE=$(echo "$SESSION_TITLE" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9]/-/g' | sed 's/-\+/-/g' | sed 's/^-//' | sed 's/-$//')

mkdir -p sessions

FILE_PATH="sessions/session-${SESSION_NUMBER}-${SAFE_TITLE}.md"

if [ -f "$FILE_PATH" ]; then
  echo "Error: file already exists:"
  echo "$FILE_PATH"
  echo "Refusing to overwrite it."
  exit 1
fi

cat > "$FILE_PATH" <<EOF
Yo
EOF
echo "Success: created $FILE_PATH"
