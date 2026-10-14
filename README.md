\# Automated Folder Backup



\## Overview

A beginner DevOps project that uses Bash scripting to

create timestamped backups of files on Windows with Git Bash.



\## Features

\- Creates timestamped backup directories.

\- Copies files from a source directory.

\- Checks whether the source folder exists.

\- Detects when the source folder has no files.

\- Reports backup success or failure.



\## Project Structure

automated-backup/

├── backup.sh

├── README.md

├── .gitignore

├── source/

└── backups/



\## Requirements

\- Windows

\- Git for Windows (includes Git Bash)



\## How to Run

1\. Open Git Bash.

2\. Navigate to the project folder.

3\. Run:



&#x20;  bash backup.sh



\## Testing

\- Verify copied files in the backups directory.

\- Run the script twice to verify timestamped backups.

\- Rename the source directory to test error handling.



\## Limitations

\- Backups are stored locally.

\- This project does not schedule backups automatically.

\- This script does not encrypt backups or verify file hashes.



\## Future Improvements

\- Schedule backups using Windows Task Scheduler.

\- Add backup retention and cleanup.

\- Add file integrity verification.

\- Store copies on a separate drive.




## Git Workflow

This project uses Git branches to manage changes safely.

- `main`: Stable version of the project.
- `feature/add-project-info`: Branch for adding project documentation.

Changes are committed on the feature branch before being merged into main.



