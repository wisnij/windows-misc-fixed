# Windows Misc Fixed

MS Windows versions of the X11 6x13 and 7x13 bitmap fonts, suitable for use with
e.g. Emacs.  These only cover Latin1 characters due to limitations of Windows
bitmap font support in general and the `FON` format in particular.

Originally derived from
[ucs-fonts](https://www.cl.cam.ac.uk/~mgk25/ucs-fonts.html) and lightly modified
to suit my own preferences.

## Changes

* dotted `0` to better distinguish it from `O`
* curved `l` to better distinguish it from `1`

## Requirements

To generate the `.fon` files from `.fd`, you need
[`mkwinfont`](https://www.chiark.greenend.org.uk/~sgtatham/fonts/).  If you want
to start from scratch with the original `.bdf` files, you'll also need
`dewinfont` and [`fontforge`](https://fontforge.github.io/).
