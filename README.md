# Backup Script

This script automates the process of backing up specific directories into compressed `.zip` files, which are saved on the Desktop.

## Directories Included in the Backup

The following directories are backed up:

- `~/Documents`
- `~/Music`
- `~/Downloads`
- `~/Videos`
- `~/Pictures`
- `~/.var/app`

## How It Works

1. **Backup Process**:
   - For each directory listed in the `directories` array, the script compresses the files into a `.zip` file.
   - The backup `.zip` files are saved on the Desktop, with each file named after the directory it contains.

2. **Output**:
   - Once the backup is complete, the script outputs a confirmation message for each directory.

## Requirements

- **Bash**: The script is written in bash and requires a Unix-like environment.

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

## License

This script is open-source and available under the [MIT License](https://opensource.org/licenses/MIT).
