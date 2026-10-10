
#!/usr/bin/env bash

# Stop if a command fails or an undefined variable is used.
set -euo pipefail

# Find the directory containing this script.
PROJECT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"

# Define the source and backup folders.
SOURCE_DIR="$PROJECT_DIR/source"
BACKUP_ROOT="$PROJECT_DIR/backups"

# Generate a timestamp for the backup folder.
TIMESTAMP="$(date +%Y%m%d_%H%M%S)"
BACKUP_DIR="$BACKUP_ROOT/backup_$TIMESTAMP"

# Check whether the source folder exists.
if [[ ! -d "$SOURCE_DIR" ]]; then
    echo "ERROR: Source folder does not exist: $SOURCE_DIR"
    exit 1
fi

# Check whether the source folder contains any files.
if [[ -z "$(find "$SOURCE_DIR" -type f -print -quit)" ]]; then
    echo "ERROR: Source folder contains no files."
    exit 1
fi

# Create the backup directory.
mkdir -p "$BACKUP_DIR"

# Copy the source folder contents to the backup.
cp -a "$SOURCE_DIR/." "$BACKUP_DIR/"

# Display the result.
echo "Backup completed successfully!"
echo "Backup location: $BACKUP_DIR"
