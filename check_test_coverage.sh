#!/usr/bin/env bash

# List of all folders in the repository
all_folders=(
  ada bash c cobol cpp crystal csharp d dart docker erlang fastapi flask-app fortran fsharp go groovy julia kotlin lua nim node-express objective-c perl php powershell r react-vite ruby rust typescript v zig
)

# Folders with test-related content
tested_folders=(
  elixir haskell java-maven python-package scala swift
)

# Find folders without tests
untested_folders=()
for folder in "${all_folders[@]}"; do
  if [[ ! " ${tested_folders[@]} " =~ " ${folder} " ]]; then
    untested_folders+=("$folder")
  fi
done

# Report the count of untested folders
echo "Number of folders without tests: ${#untested_folders[@]}"
echo "Folders without tests: ${untested_folders[@]}"