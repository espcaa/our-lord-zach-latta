#!/bin/sh

cd pics || exit 1
printf "updating file list...\n"
rm -f list.txt
find . -type f ! -name "list.txt" | sed 's|^\./||' > list.txt
if [ $? -ne 0 ]; then
    printf "Error: Failed to update file list.\n"
    exit 1
fi
printf '\n'
cat list.txt
printf '\n'
printf "done.\n"
