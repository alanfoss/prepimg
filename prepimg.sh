#!/bin/bash

## "prepimg.sh"
## written by Alan Formy-Duval
## August 10, 2021

## prepares screenshot images for inclusion in opensource.com articles
## checks the width and reduces as needed
## adds a border
## filenames are prepended with Ready after processing

## Screenshots should be created using GNOME extension - Screenshot Tool
## Reference: https://extensions.gnome.org/extension/1112/screenshot-tool/
## configured to save screenshots to the directory shown below:
SCREENSHOTS="/home/alan/Pictures/Screenshots"
## opensource.com requires a maximum width of 600 for images
## minus 2 for adding a border
MAXWIDTH=598

cd "${SCREENSHOTS}"
## Check that screenshots exist
# [ ! -f "$SCREENSHOTS/Screenshot*" ] && echo "No screenshots found."; exit 0;

## Reduce the image sizes as needed

for i in Screenshot*
do
## get the image width
W=$(identify -format %w ${i})
    if [ "$W" -gt "$MAXWIDTH" ] 
    then
        # echo "${i} is ${W} - reducing"
        convert -resize ${MAXWIDTH} "${i}" "${i}"
    fi
done

## Add a border to each image and rename to indicate it is ready

for i in Screenshot*
do
convert -bordercolor black -border 1 "${i}" "Ready-${i}"
## remove old file
rm "${i}"
## report size
# echo "${i} is $(identify -format %w ${i})"
done
