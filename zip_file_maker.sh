#!/bin/bash

directories=("Documents" "Music" "Downloads" "Videos" "Pictures" ".var/app")
desktop_dir=~/Desktop

# Check if pv is installed
if command -v pv &> /dev/null; then
    use_pv=true
else
    use_pv=false
fi

for dir in "${directories[@]}"; do
    source_dir=~/$dir
    zip_file_name=$(echo "$dir" | tr '/' '_')
    output_zip="$desktop_dir/${zip_file_name}_backup.zip"
    
    if [ "$use_pv" = true ]; then
        # Calculate the size of the directory and show progress bar using pv
        total_size=$(du -sb "$source_dir" | awk '{print $1}')
        
        # Use pv to show progress and zip the files
        tar -cf - "$source_dir" | pv -s $total_size | zip -r "$output_zip" -
    else
        # Just zip the files without progress bar
        zip -r "$output_zip" "$source_dir"
    fi
    
    echo "All files in $source_dir have been zipped into $output_zip"
done

