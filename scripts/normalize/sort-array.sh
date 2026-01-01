#!/bin/bash

# Normalize a JSON array by sorting it by a field within each object
# Usage: array-by-field.sh <array_path> <sort_field_path> < input.json
# Example: array-by-field.sh '.result.state_diff.deployed_contracts' '.address' < input.json

if [ $# -ne 2 ]; then
    echo "Error: Both array_path and sort_field_path are required" >&2
    echo "Usage: $0 <array_path> <sort_field_path>" >&2
    exit 1
fi

ARRAY_PATH="$1"
SORT_FIELD_PATH="$2"

# Build the jq filter
# We need to update the array at ARRAY_PATH to be sorted by SORT_FIELD_PATH
# The filter will be: ARRAY_PATH |= sort_by(SORT_FIELD_PATH)

jq -Sc "${ARRAY_PATH} |= sort_by(${SORT_FIELD_PATH})"
