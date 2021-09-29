## README ##
**prepimg.sh** - a script to prepare images (screenshots) for inclusion in articles to be submitted
to opensource.com for publication. The opensource.com (OSDC) platform requires a maximum width for images
to be 600 pixels.

This script does the following:
+ reduces width to meet OSDC 600 pixel width limit
+ adds a 1 pixel border of specified color
+ places finished images into a "Ready" directory
  
___

## PEOPLE ##
**Author**

+ Alan Formy-Duval

**Thanks to the following contributors**

+ Seth Kenlon

___
## USAGE ##
**prepimg.sh** [OPTION] [ARGUMENT]

- --help, -h        Display this help facility
- --verbose, -v     Be verbose
- --directory, -d   Screenshot directory 
  + (default: <your home directory>/Pictures/Screenshots)
  + The directory where images to be processed are located can be specified by this option.
- --ready, -r       Ready directory
  + (default: <your home directory>/Pictures/Screenshots/Ready)
  + The directory where processed images are saved can be specified by this option.
- --border, -b      Border color
  + (default: black)
  + The border color can be specified with this option.
