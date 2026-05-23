#!/bin/bash

folder="scripts"

if [ -d "$folder" ]; then
	echo "The $folder folder exists."
 else
	echo "The $folder folder does not exist."
 fi

