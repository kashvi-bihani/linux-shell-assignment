#!/bin/bash
# Purpose : Download a file from the internet and "write" it to a predefined directory
# Name    : Kashvi Bihani
# Date    : 16-11-2025

# File URL to download
URL="https://example.com/sample.pdf"

# Directory to save the file
DOWNLOAD_DIR="/home/kashvi_bihani/write.sh"

# Creating the directory
mkdir -p "$DOWNLOAD_DIR"

# Download
wget "$URL" -P "$DOWNLOAD_DIR"

echo "File downloaded successfully to $DOWNLOAD_DIR"
