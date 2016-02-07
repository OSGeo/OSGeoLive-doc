#!/bin/sh
#################################################
# 
# Purpose: Provide diff between the last translation
#          commit and the latest english commit
# Author:  Angelos Tzotsos
#
#################################################
# Copyright (c) 2016 Open Source Geospatial Foundation (OSGeo)
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

if [ "$#" -lt 2 ] || [ "$#" -gt 2 ]; then
    echo "Wrong number of arguments"
    echo "Usage: diff_last_translation.sh LANG(de) DOCUMENT(overview/overview.rst)"
    exit 1
fi

LANG="$1"
FILE_PATH="$2"

# # Time based
# LAST_MOD_DATE=`git log -1 --format="%ai" -- ../"$LANG"/"$FILE_PATH"`
# FIRST_COMMIT=`git rev-list --after="$LAST_MOD_DATE" master | tail -n 1`
# git diff "$FIRST_COMMIT" -- ../en/"$FILE_PATH"

# SHA based
LAST_COMMIT=`git log -1 --format="%H" -- ../"$LANG"/"$FILE_PATH"`
git diff "$LAST_COMMIT" -- ../en/"$FILE_PATH"