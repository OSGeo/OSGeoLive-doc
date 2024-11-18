#!/bin/sh
#################################################
#
# Purpose: Provide a csv list of document version numbers and related fields
# Author:  Cameron Shorter
#
#################################################
# Copyright (c) 2010-2018 Open Source Geospatial Foundation (OSGeo)
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
# This script extracts out the git version of osgeolive documents in
# a format suitable to be copied into the OSGeoLive translation status
# stored here:
# https://spreadsheets.google.com/ccc?key=0AlRFyY1XenjJdFRDbjFyWHg1MlNTRm10QXk0UWEzWlE&hl=en_GB&authkey=CPTB6uIE#gid=7

# Store the script root directory for later
cd `dirname ${0}`
scriptDir=`pwd`

# cd to the svn document directory
cd ${scriptDir}/../

echo "dir/file,docname,version,directory,language,username,date,project,last updated:" `date`

#List doc svn version numbers
#  svn list -v -R \
#Only look at rst source docs
# | grep ".rst$" \
# The template files have been removed from subversion, but are still picked
# up by svn list.
# | grep -v "/template_" \
#Ignore doc/index.rst which is just an autoforward to doc/en/index.rst
# | grep -v " index.rst$" \
#Ignore directories
# | grep -v "/$"  \
#Change en/contact.rst to en/./contact.rst (so all files have 2 dirs)
# | sed -e's#\( [^/]*\)/\([^/]*$\)#\1/./\2#' \
#Insert space delimiters between dirs
# | sed -e's#/# #g' \
#Reorder and insert commas
# | awk '{print $7"/"$8"/"$9","$9","$1","$8","$7","$2","$9,",",$4," ",$5," ",$6}' \
# change . to "." so that it is read as a string instead of number
# | sed -e's/,\.,/,".",/' \
#Extract project name from filename
# | sed -e's/_overview.rst$//' \
# | sed -e's/_quickstart.rst$//' \
# | sed -e's/.rst$//' \


# #cat list.txt \
# svn list -v -R \
#   | grep ".rst$" \
#   | grep -v "/template_" \
#   | grep -v " index.rst$" \
#   | grep -v "/$"  \
#   | sed -e's#\( [^/]*\)/\([^/]*$\)#\1/./\2#' \
#   | sed -e's#/# #g' \
#   | awk '{print $8"/"$9"/"$10","$10","$1","$9","$8","$2",",$4,$5,$6,$7","$10}' \
#   | sed -e's/,\.,/,".",/' \
#   | sed -e's/_overview.rst$//' \
#   | sed -e's/_quickstart.rst$//' \
#   | sed -e's/.rst$//' \

# List files from git
git ls-tree -r --name-only HEAD | while read filename; do
  echo "$filename,$(git log -1 --format="%h,%an,%ai" -- $filename)" \
  | grep ".rst" \
  | sed -e's#.rst#.rst #g' \
  | grep -v "/template_" \
  | grep -v " index.rst$" \
  | grep -v "/$" \
  | sed -e's#^\([^/]*\)/\([^/]*$\)#\1/./\2#' \
  | sed -e's#/#,#g' \
  | sed -e's#.rst #.rst#g' \
  | awk -F',' '{print $1"/"$2"/"$3","$3","$4","$1"/"$2"/,"$1","$5","$6","$3";"}' \
  | sed -e's/,\.,/,".",/' \
  | sed -e's/_overview.rst;//' \
  | sed -e's/_quickstart.rst;//' \
  | sed -e's/.rst$//'
done

# # cd to the svn bin directory
# cd ${scriptDir}

# echo "INSTALL SCRIPTS:"
# echo "dir/file,docname,version,directory,language,username,date,project,last updated:" `date`

# #cat list2.txt \
# #ols line was | awk '{print "bin/"$7","$7","$1",bin,,"$2","$4" "$5" "$6","$7}' \
# svn list -v -R \
#   | grep -v "/$"  \
#   | awk '{print "bin/"$8","$8","$1",bin,,"$2","$4" "$5" "$6,$7","$8}' \
#   | sed -e's#,install_\([^,]*\).sh$#,\1#' \
#   | sed -e's/,\.,/,".",/' \
#   #| sed -e's#\(install_\)\([^,]*[.sh$\)#\2#' \
