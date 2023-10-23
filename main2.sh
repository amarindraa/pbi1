#!/bin/bash

# Additional Variables
filename_excel="daily_market_price.xlsx"
source_dir="/local/data/market"
target_dir="$path/$name_of_directory"

# Copy the file from source directory to target directory
if [ -d "$source_dir" ]; then
    cp "$source_dir/$filename_excel" "$target_dir/"

    # Check if the copy was successful
    if [ $? -eq 0 ]; then
        echo "File $filename_excel copied successfully."
        # Create a log file with the log content
        echo "File Moved Successfully" > "$target_dir/move_log.txt"
    else
        echo "Error: File $filename_excel copy failed."
    fi
else
    echo "Source directory $source_dir does not exist."
fi
