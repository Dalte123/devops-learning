#!/bin/bash

if [ -z "$1" ]; then
	echo "Error: missing first argument."
 	echo "Usage: ./scripts/args-demo.sh <session-number> <session-title>"
	exit 1
fi


if [ -z "$2" ]; then
	echo "Error: missing second argument."
        echo "Usage: ./scripts/args-demo.sh <session-number> <session-title>"
	exit 1
fi

	echo "Session number: $1"
	echo "Session title: $2"
	echo "All arguments: $@"
