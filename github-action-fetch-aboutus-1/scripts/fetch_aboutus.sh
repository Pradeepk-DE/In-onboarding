#!/bin/bash

# Fetch content from the Diversity and Inclusion page
URL="https://risk.lexisnexis.com/about-us/inclusion-and-belonging"
OUTPUT_FILE="../aboutus.md"

# Use curl to get the content and strip out HTML tags
curl -s "$URL" | \
sed -E 's/<[^>]*>//g' | \
sed -E 's/^[ \t]+//;s/[ \t]+$//' | \
sed '/^$/d' > "$OUTPUT_FILE"

# Check if the content was successfully written
if [ -s "$OUTPUT_FILE" ]; then
    echo "Content fetched and saved to $OUTPUT_FILE"
else
    echo "Failed to fetch content or no content available."
fi