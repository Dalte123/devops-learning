#!/bin/bash

set -e

echo "Checking Git Status ..."
	git status

echo
	read -p "Enter commit message: " commit_message

echo 
echo "Adding files..."
	git add .

echo
echo "Committing changes..."
	git commit -m "$commit_message"

echo 
echo "Pushing to Github..."
	git push

echo
echo "Done. Changes pushed safely."
