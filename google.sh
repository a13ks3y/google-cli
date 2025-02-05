#!/bin/bash

# Function to display help
function display_help() {
    echo "Usage: $0 [query]"
    echo
    echo "This script opens the default browser with the Google URL and appends any parameters given to the script as query parameters."
    echo
    echo "Examples:"
    echo "  $0 'search term'"
    echo "  $0 'another search term'"
    echo
    echo "Options:"
    echo "  -h, --help    Display this help message"
}

# Check if help is requested
if [[ "$1" == "-h" || "$1" == "--help" ]]; then
    display_help
    exit 0
fi

# Base Google URL
google_url="https://www.google.com/search?q="

# Combine all arguments into a single query string
query="$*"

# Open the default browser with the Google URL and query
open "${google_url}${query}"