#!/bin/bash

for file in *.mkv; do
  echo "[INFO] Checking file: $file"
  mkvmerge -i $file | grep "Track ID 3"
done