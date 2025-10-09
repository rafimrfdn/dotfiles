#!/bin/sh
 
noteFilename="$HOME/Documents/Notes/note-$(date +%Y-%m-%d).md"

vim -c "norm Go" \
    -c "norm zz" \
    -c "startinsert" $noteFilename
