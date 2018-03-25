#!/bin/sh
#############################################################################
#
# Purpose:
# Removes duplicated images generated when more than one language is generated
#
# Author: Vicky Vergara Vicky Vergara <vicky_vergara@hotmail.com>
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


cd build/doc/_build/html

# Copy the images generated on the english documentation
mv en/_images .

# Remove the images of the other languages
rm -rf */_images/

# Fix the links to the new image locations
perl -pi -e 's/_images/\.\.\/_images/g' `find ./ -name "*.html"`

