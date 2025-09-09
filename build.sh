#!/bin/bash

# Build script for local development
# This script replaces placeholders with actual values

# Check if FORMSPREE_ID is set
if [ -z "$FORMSPREE_ID" ]; then
    echo "Warning: FORMSPREE_ID environment variable is not set"
    echo "Usage: FORMSPREE_ID=your_actual_id ./build.sh"
    exit 1
fi

# Create a build directory
mkdir -p build

# Copy all files to build directory
cp -r *.html *.md *.yml logos build/ 2>/dev/null || true

# Replace placeholder in the build version
sed -i.bak "s/YOUR_FORM_ID/$FORMSPREE_ID/g" build/index.html

# Remove backup file
rm -f build/index.html.bak

echo "✅ Build completed successfully!"
echo "📁 Files are in the 'build' directory"
echo "🔑 Form ID has been replaced"