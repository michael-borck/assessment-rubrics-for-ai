#!/bin/bash
# build.sh - Regenerate all outputs from source markdown files
# Requires: pandoc

set -e  # Exit on error

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCES_DIR="$SCRIPT_DIR/sources"
OUTPUT_DOCX_DIR="$SCRIPT_DIR/outputs/docx"

echo "Building assessment rubric outputs..."
echo "Source dir: $SOURCES_DIR"
echo "Output dir: $OUTPUT_DOCX_DIR"

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Error: pandoc is not installed. Please install it first."
    exit 1
fi

# Convert each markdown file to docx
for md_file in "$SOURCES_DIR"/*.md; do
    filename=$(basename "$md_file")
    docx_name="${filename%.md}.docx"
    docx_path="$OUTPUT_DOCX_DIR/$docx_name"

    echo "Converting $filename -> $docx_name..."
    pandoc "$md_file" -o "$docx_path"
done

echo "✓ All files converted successfully!"
echo "Outputs saved to: $OUTPUT_DOCX_DIR"
