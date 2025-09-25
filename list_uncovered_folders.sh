#!/bin/bash

# List of all folders in the repository
all_folders=(
  ada bash c cobol cpp crystal csharp d dart docker elixir erlang fortran fsharp go groovy haskell java-maven julia kotlin lua nim node-express objective-c perl php powershell python-package r react-vite ruby rust scala swift typescript v zig
)

# Folders covered in CI
ci_folders=(
  python-package flask-app fastapi node-express react-vite go rust java-maven c cpp
)

# Find folders not covered in CI
uncovered_folders=()
for folder in "${all_folders[@]}"; do
  if [[ ! " ${ci_folders[@]} " =~ " ${folder} " ]]; then
    uncovered_folders+=("$folder")
  fi
done

# Report uncovered folders
echo "Folders not covered in CI:"
for folder in "${uncovered_folders[@]}"; do
  echo "- $folder"
done