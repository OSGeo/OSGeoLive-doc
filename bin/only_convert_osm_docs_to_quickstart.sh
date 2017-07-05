#!/bin/sh
#################################################
# 
# Purpose: Partially convert source documentation from LearnOSM git
# repository to OSGeoLive git repository, keeping git history.
# Source: http://gbayer.com/development/moving-files-from-one-git-repository-to-another-preserving-history/
#
# Then convert from MD format to RST format

# Author:  Cameron Shorter
#
#################################################
# Copyright (c) 2010-2016 Open Source Geospatial Foundation (OSGeo)
# Copyright (c) 2009 Jirotech
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
##################################################


#
# example execution:
# sh bin/only_convert_osm_docs_to_quickstart.sh en/quickstart/josmeditor_quickstart.rst
#


# Convert from MD format to RST
for file in "$@"; do

  pandoc --from=markdown --to=rst --output=tmp $file

  mv tmp $file

  git commit -m "Changed from markdown to RST format on $file" $file

  perl -pi -e 's/images\/josm/images\/screenshots\/1024x768/' $file

  git commit -m "changed images paths of $file to new location" $file

done

