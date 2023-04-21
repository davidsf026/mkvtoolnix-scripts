#!/bin/bash

for file in *.mkv; do
  echo "[INFO] Changing file: $file"
  mkvpropedit -v "$file" --edit track:3 --set flag-default=1
  mkvpropedit -v "$file" --edit track:2 --set flag-default=0
  mkvpropedit -v "$file" --edit track:4 --set flag-default=1
done