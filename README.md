# Backup Script

This script automates the process of backing up specific directories into compressed `.zip` files, which are saved on the Desktop. If the `pv` command is installed, the script will display a progress bar indicating the backup progress.

## Directories Included in the Backup

The following directories are backed up:

- `~/Documents`
- `~/Music`
- `~/Downloads`
- `~/Videos`
- `~/Pictures`
- `~/.var/app`

## How It Works

1. **Check for `pv` Installation**: 
   - The script checks if the `pv` command is available. If it is, the backup process will display a progress bar indicating the estimated time remaining.
   - If `pv` is not installed, the script will simply create the backup without showing the progress.

2. **Backup Process**:
   - For each directory listed in the `directories` array, the script compresses the files into a `.zip` file.
   - The backup `.zip` files are saved on the Desktop, with each file named after the directory it contains.

3. **Progress Bar**:
   - If `pv` is available, the script calculates the total size of the directory to be backed up and shows the progress bar as the files are being zipped.

4. **Output**:
   - Once the backup is complete, the script outputs a confirmation message for each directory.

## Requirements

- **Bash**: The script is written in bash and requires a Unix-like environment.
- **pv (Pipe Viewer)**: This is optional but recommended for visual progress. Install it using the following command:
  ```bash
  sudo apt-get install pv
