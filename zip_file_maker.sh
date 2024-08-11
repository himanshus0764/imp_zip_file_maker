#!/bin/bash

directories=("Documents" "Music" "Downloads" "Videos" "Pictures" ".var/app")
desktop_dir=~/Desktop

for dir in "${directories[@]}"; do
    source_dir=~/$dir
    zip_file_name=$(echo "$dir" | tr '/' '_')
    output_zip="$desktop_dir/${zip_file_name}_backup.zip"
    
    # Zip the files without using pv
    zip -r "$output_zip" "$source_dir"
    
    echo "All files in $source_dir have been zipped into $output_zip"
done
