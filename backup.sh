
#!/usr/bin/env bash

set -euo pipefail

# Locate the project folder
PROJECT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

# Define source and backup folders
SOURCE_DIR="$PROJECT_DIR/source"
BACKUP_ROOT="$PROJECT_DIR/backups"

# Create a timestamp
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
BACKUP_DIR="$BACKUP_ROOT/backup_$TIMESTAMP"

# Check whether the source folder exists
if [[ ! -d "$SOURCE_DIR" ]]; then
    echo "ERROR: Source folder does not exist."
    exit 1
fi

# Check whether the source folder contains files
if [[ -z "$(find "$SOURCE_DIR" -type f -print -quit)" ]]; then
    echo "ERROR: Source folder contains no files."
    exit 1
fi

# Create the backup folder
mkdir -p "$BACKUP_DIR"

# Copy all source files and subfolders
cp -a "$SOURCE_DIR/." "$BACKUP_DIR/"

# Display the result
echo "Backup completed successfully!"
echo "Backup location: $BACKUP_DIR"
