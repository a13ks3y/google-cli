#!/bin/sh

# Check if the script is run as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run as root. Please use sudo."
    exit 1
fi

# Define the source and destination
SOURCE="google.sh"
DESTINATION="/usr/local/bin/google"

# Check if the source file exists
if [ ! -f "$SOURCE" ]; then
    echo "Source file $SOURCE does not exist."
    exit 1
fi

# Copy the file to the destination
cp "$SOURCE" "$DESTINATION"

# Make the script executable
chmod +x "$DESTINATION"

echo "google.sh has been installed to $DESTINATION"