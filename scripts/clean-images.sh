#!/bin/sh
#############################################################################
#
# Purpose:
# Removes
# - duplicated images generated when more than one language is generated
# - not needed directories/files
#
#
# Author: Vicky Vergara <vicky_vergara@hotmail.com>
#
#############################################################################
# Copyright (c) 2018 Open Source Geospatial Foundation (OSGeo)
#
# Licensed under the GNU LGPL.
#
# This library is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 2.1 of the License,
# or any later version.  This library is distributed in the hope that
# it will be useful, but WITHOUT ANY WARRANTY, without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Lesser General Public License for more details, either
# in the "LICENSE.LGPL.txt" file distributed with this software or at
# web page "http://www.fsf.org/licenses/lgpl.html".
#############################################################################

pushd build/_build/html > /dev/null || exit 1

# Copy the images generated on the english documentation
mv en/_images .
mv en/_static .

# Remove the not needed directories in all languages
rm -rf */_images/
rm -rf */_static/
rm -rf */_sources/
rm -rf */.doctrees

# Fix the links to the new image locations
perl -pi -e 's/_images/\.\.\/_images/g' `find ./ -name "*.html"`

# Fix the links to the new _static locations
perl -pi -e 's/_static/\.\.\/_static/g' `find ./ -name "*.html"`

# Cleaning up _static from non used files
pushd _static > /dev/null || exit 1

rm -rf CMakeFiles
rm -f cmake_install.cmake

rm -rf img/CMakeFiles
rm -f  img/cmake_install.cmake
rm -f  img/Makefile

popd
popd
