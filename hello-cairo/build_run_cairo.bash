#!/bin/bash

CAIRO_FILE_NAME=$1
COMPILE_FILE_NAME="compiled/${CAIRO_FILE_NAME}.json"

mkdir -p "compiled/"

echo "Compiling..."
cairo-compile \
    "cairo/${CAIRO_FILE_NAME}.cairo" \
    --output $COMPILE_FILE_NAME \
    --cairo_path="/Users/maxwellholloway/dev/cairo-dev/hello-cairo/cairo"
echo "...finished compiling."

echo "Running..."
cairo-run --program=$COMPILE_FILE_NAME --print_output --layout=small
echo "...finished running."