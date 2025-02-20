#!/bin/bash

# Exit immediately if any command exits with a non-zero status, which helps to catch errors early.
set -e

readonly FROZEN_LITERAL_LINE="# frozen_string_literal: true"

# Function to add the "# frozen_string_literal: true" line at the beginning of Ruby files if it's missing.
add_frozen_string_literal_header() {
  local file="$1"
  local first_line=$(head -n 1 "$file" | sed 's/^[[:space:]]*//;s/[[:space:]]*$//')

  if [[ "$first_line" != "$FROZEN_LITERAL_LINE" ]]; then
    echo -e "$FROZEN_LITERAL_LINE\n$(cat "$file")" > "$file"
    echo "Modified: $file"
  fi
}

TARGET="$1"

# Check if the provided target exists (either file or directory).
if [ ! -e "$TARGET" ]; then
  echo "Error: No such file or directory"
  exit 1
fi

# If the target is a file, apply the frozen_string_literal header to it and finish the script.
if [ -f "$TARGET" ]; then
  add_frozen_string_literal_header "$TARGET"
  exit 0
fi

# If the target is a directory, find all Ruby files within it and apply the frozen_string_literal header.
# IMPORTANT: It might not work correctly if the filename contains spaces or special characters.
if [ -d "$TARGET" ]; then
  find "$TARGET" -type f -name "*.rb" | while read -r FILE; do
    add_frozen_string_literal_header "$FILE"
  done
  exit 0
fi
