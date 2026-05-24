#!/bin/bash

# check-env.sh
# This Script checks whether APP_ENV is set before continuing.

if [ -z "$APP_ENV" ]; then
	echo "APP_ENV is not set. Please set it before running this script."
	exit 1
fi

	echo "Current environment: $APP_ENV"
