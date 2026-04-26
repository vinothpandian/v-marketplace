#!/usr/bin/env bash

# If no conductor directory, allow stop immediately
if [ ! -d "conductor" ]; then
  exit 0
fi

# Check for in-progress tasks in any track
TRACKS_DIR="conductor/tracks"
if [ ! -d "$TRACKS_DIR" ]; then
  exit 0
fi

# Search for [~] markers in plan.md files
for plan in "$TRACKS_DIR"/*/plan.md; do
  if [ -f "$plan" ] && grep -q '\[~\]' "$plan"; then
    echo "In-progress tasks [~] found in $plan" >&2
    echo "Complete tasks or update status markers before stopping." >&2
    exit 2
  fi
done

# All checks passed
exit 0
