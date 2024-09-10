#!/bin/bash
set -e

# Activate the Cookiecutter environment
source /usr/local/bin/activate-cookiecutter-ds

# Check if ccds is installed
if ! command -v ccds &> /dev/null; then
    echo "ccds is not installed or not in PATH"
    exit 1
fi

# Check ccds version
INSTALLED_VERSION=$(ccds --version | cut -d' ' -f2)
echo "Installed cookiecutter-data-science version: $INSTALLED_VERSION"

# Simple test: Create a project from the data science template
ccds --no-input project_name=test_ds_project

# Check if the project was created
if [ -d "test_ds_project" ]; then
    echo "Test data science project created successfully"
else
    echo "Failed to create test data science project"
    exit 1
fi

# Check for typical data science project structure
directories=("data" "models" "notebooks" "reports")
for dir in "${directories[@]}"; do
    if [ ! -d "test_ds_project/$dir" ]; then
        echo "Expected directory $dir not found in the created project"
        exit 1
    fi
done

echo "All tests passed!"