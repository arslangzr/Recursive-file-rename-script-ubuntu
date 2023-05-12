#!/bin/bash

# loop through all directories
for d in */ ; do
    # go into the directory
    cd "$d"

    # rename all pictures to the name of the directory followed by an underscore and a number
    i=1
    for f in *.png; do
        mv "$f" "${d%/}_$i.png"
        i=$((i+1))
    done

    # go back to the parent directory
    cd ..
done
