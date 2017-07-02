#!/bin/sh
#################################################
# 
# Purpose: Partially convert source documentation from LearnOSM git
# repository to OSGeo-Live git repository, keeping git history.
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

echo aaa1
# Get the source git repository:
#git clone https://github.com/camerons/learnosm.git
#git clone https://github.com/hotosm/learnosm.git

echo aaa2
# Move from OSM Directory to OSGeo-Live directory stucture
mkdir -p OSGeoLive-doc
mkdir -p OSGeoLive-doc/images
mkdir -p OSGeoLive-doc/images/screenshots
mkdir -p OSGeoLive-doc/images/screenshots/1024x768
mkdir -p OSGeoLive-doc/en
mkdir -p OSGeoLive-doc/en/quickstart

git add OSGeoLive-doc
got commit -m"Add OSGeoLive-doc directory"

echo aaa3
git mv images/beginner/id-editor* OSGeoLive-doc/images/screenshots/1024x768/
git mv images/beginner/id-editor* OSGeoLive-doc/images/screenshots/1024x768/

git mv _posts/en/1900-12-21-start-josm.md OSGeoLive-doc/en/quickstart/jsom_quickstart.rst
git mv _posts/en/0200-12-23-id-editor.md OSGeoLive-doc/en/quickstart/ideditor_quickstart.rst
echo aaa4

git commit -m"Moved OSM id-editor and JSON guides to OSGeo-Live quickstart directory stucture" .

echo aaa5
# Convert from MD format to RST
for file in \
  OSGeoLive-doc/en/quickstart/jsom_quickstart.rst \
  OSGeoLive-doc/en/quickstart/ideditor_quickstart.rst \
; do

  echo aaa6
  pandoc --from=markdown --to=rst --output=tmp {$file}
  mv tmp ${file}
  git commit -m"Changed from markdown to RST format" ${file}

  echo aaa7
  # Change the location of images
  sed -e's#/images/beginner/#/images/screenshots/1024x768/#g' ${file} > tmp
  mv tmp ${file}
  git commit -m"changed image path to new location" ${file}
done
echo aaa8

# Trim OSM's git history to just the directy to be copied to OSGeo-Live
git filter-branch --subdirectory-filter OSGeoLive-doc -- --all

