#!/bin/bash
# Define the extensions of the multimedia files to keep
media_extensions=(mp3 mp4 wav wmv avi mpeg mpg)

# Loop through all subdirectories in the current directory
for dir in */; do
  # Loop through all files in the current subdirectory
  for file in "$dir"*; do
    # Check if the current file's extension is in the list of multimedia extensions
    if ! [[ "${media_extensions[@]}" =~ "$(echo "$file" | awk -F . '{print $NF}')" ]]; then
      # Delete the file if it is not a multimedia extension
      rm "$file"
    fi
  done
done
