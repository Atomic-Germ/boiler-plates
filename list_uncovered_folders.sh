#!/usr/bin/env bash

# Generates a list of all language folders in the repository with ls
all_folders=($(ls -d */ | sed 's#/##'))

# Matches list of folders to `.github/workflows/test-<language>.yml` files
tested_folders=($(ls .github/workflows/test-*.yml 2>/dev/null | sed -E 's#.*/test-(.*)\.yml#\1#'))

# Find folders without tests
untested_folders=()
for folder in "${all_folders[@]}"; do
  if [[ ! " ${tested_folders[@]} " =~ " ${folder} " ]]; then
    untested_folders+=("$folder")
  fi
done

# Report untested folders
echo "Folders without tests:"
for folder in "${untested_folders[@]}"; do
  echo "- $folder"
done
echo "Total number of folders without tests: ${#untested_folders[@]}"
exit 0