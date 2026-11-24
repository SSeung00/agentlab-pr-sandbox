#!/bin/sh
# The check the workflow runs: greeting.txt must say exactly "hello".
set -e
test "$(cat greeting.txt)" = "hello" || { echo "greeting.txt should say hello, it says: $(cat greeting.txt)"; exit 1; }
echo "greeting ok"
