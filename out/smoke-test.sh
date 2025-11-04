#!/usr/bin/env bash
# Smoke test: run the script locally (no Docker required)
set -euo pipefail

SCRIPT="./backup.sh"
if [ ! -x "$SCRIPT" ]; then
  echo "Making script executable..."
  chmod +x "$SCRIPT"
fi

echo "Running smoke test: executing $SCRIPT"
"$SCRIPT"
RC=$?
echo "Exit code: $RC"
if [ $RC -ne 0 ]; then
  echo "Smoke test failed."
  exit $RC
fi
echo "Smoke test succeeded."
