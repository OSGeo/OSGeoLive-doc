#!/bin/bash

###############################################################################
#  Copyright (c) 2017, Vicky Vergara <vicky_vergara@hotmail.com>
#
#  Licence:  GPL-2.0  
#
#  Permission is hereby granted, free of charge, to any person obtaining a
#  copy of this software and associated documentation files (the "Software"),
#  to deal in the Software without restriction, including without limitation
#  the rights to use, copy, modify, merge, publish, distribute, sublicense,
#  and/or sell copies of the Software, and to permit persons to whom the
#  Software is furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included
#  in all copies or substantial portions of the Software.
#
#  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
#  OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
#  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
#  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
#  DEALINGS IN THE SOFTWARE.
###############################################################################

#example execution
# bin/get_images_size.sh images

set -e

function print_error {
    echo '*************************************'
    echo '*************************************'
    echo '*************************************'

    echo $1

    echo '*************************************'
    echo '*************************************'
    echo '*************************************'
}

function print_usage {
    echo
    echo ------------------------------------
    echo Usage
    echo ------------------------------------
    echo
    echo
    echo  Gets the sizes of the images in a format suitable for csv
    echo
    echo From the root of the repository:
    echo "bash bin/get_images_size.sh path/to/images"
    echo 
    echo Example execution:
    echo "bash get_images_size.sh doc/images/projects/*/logo*"
    
    echo
    exit 1
}

TOPLEVELPATH=`git rev-parse --show-toplevel`
THISPATH=`pwd`


if [[ "$TOPLEVELPATH" != "$THISPATH" ]]; then
    print_error "ERROR: not on root of repository"
    print_usage
fi

if [  "$#" -lt 1 ] ; then
    print_error "ERROR: parameter(s) missing"
    print_usage
fi

IMAGES=$@

echo Width, Height, File
for d in $IMAGES ; do
    SIZE=$(identify  $d | sed 's/.* \([0-9]*x[0-9]*\).*/\1/')
    WIDTH=$(echo  $SIZE | sed 's/\([0-9]*\)x.*/\1/')
    HEIGHT=$(echo  $SIZE | sed 's/.*x\([0-9]*\).*/\1/')
    echo $WIDTH, $HEIGHT,  $d
done


exit 0
