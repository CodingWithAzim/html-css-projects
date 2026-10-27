#!/bin/bash
TITLE=$(basename "$PWD")
{
echo '<!DOCTYPE html>'
echo '<html lang="en">'
echo "<head><meta charset=\"UTF-8\"><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"><title>$TITLE</title></head>"
echo "<body><h1>$TITLE</h1><ul>"
for d in */; do
  case "$d" in _*) continue;; esac
  [ -f "$d/index.html" ] || continue
  echo "<li><a href=\"$d\">${d%/}</a></li>"
done
echo '</ul></body></html>'
} > index.html
