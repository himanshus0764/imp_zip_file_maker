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



  ## Usage

1. **Download or Copy the Script**:
   - Copy the script into a file named `backup.sh`. You can use a text editor or download it from your repository.

2. **Make the Script Executable**:
   - Open your terminal and run the following command to make the script executable:
     ```bash
     chmod +x backup.sh
     ```

3. **Run the Script**:
   - Execute the script with the following command:
     ```bash
     ./backup.sh
     ```
   - The script will start backing up the directories specified in the `directories` array. Backup `.zip` files will be created on your Desktop with names like `Documents_backup.zip`, `Music_backup.zip`, etc.

4. **Optional: Install `pv`**:
   - If you want to use the progress bar feature, make sure `pv` is installed. You can install it using:
     ```bash
     sudo apt-get install pv
     ```

