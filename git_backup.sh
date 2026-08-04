#!/bin/bash
# Automatically track, save, and upload changes

echo "Staging files..."
git add .

# Use a timestamped commit message
COMMIT_MSG="Auto-backup: $(date '+%Y-%m-%d %H:%M:%S')"

echo "Committing changes..."
git commit -m "$COMMIT_MSG"

echo "Pushing to remote server..."
git push origin main

echo "Backup complete!"
