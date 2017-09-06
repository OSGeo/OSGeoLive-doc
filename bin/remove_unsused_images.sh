#!/bin/sh
#################################################
# 
# Purpose: Remove unused project images
# repository to OSGeoLive-doc git repository, keeping git history.
#
# Author:  Vicky Vergara
#
#################################################
# Copyright (c) 2017 Vicky Vergara
#
# Licensed under the GNU GPL v2.
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
    echo Before execution make sure that there are NO
    echo   - Changes not staged for commit
    echo   - Changes to be committed
    echo
    echo Use from the root of the repository
    echo
    echo To show this help:
    echo "bash bin/remove_unsused_images.sh help"
    echo
    echo 
    echo To only show whch files are to be deleted:
    echo "bash bin/remove_unsused_images.sh dry-run"
    echo
    echo 
    echo To remove the files:
    echo "bash bin/remove_unsused_images.sh"
    echo 
    echo This script will not make any commit.
    echo How commits are handled is up to the user
    echo
    echo -------------------------------------
    echo
    echo Verify documentation build with:
    echo "cd build"
    echo "rm -rf *"
    echo "cmake -DHTML .."
    echo "make html"
    echo "cd .."
    echo -------------------------------------
    echo
    echo undo all removal with
    echo git stash
    echo
    echo -------------------------------------
    echo
    echo Verify files to be removed with:
    echo git status
    echo
    exit 1
}

DRYRUN=$1
shift

if [[ -n "$DRYRUN" && "$DRYRUN" == "help" ]]; then
    print_usage
    exit 0
fi

if [[ -n "$DRYRUN" && "$DRYRUN" != "dry-run" ]]; then
    print_error "ERROR: Unknown flag:  $DRYRUN"
    print_usage
fi

TOPLEVELPATH=`git rev-parse --show-toplevel`
THISPATH=`pwd`

#echo $TOPLEVELPATH
#echo $THISPATH

if [[ "$TOPLEVELPATH" != "$THISPATH" ]]; then
    print_error "ERROR: not on root of repository"
    print_usage
fi

HASCHANGES=`git ls-files --modified`
echo $HASCHANGES

if [[ -n "$HASCHANGES" ]]; then 
    print_error "ERROR: Repository has changes"
    print_usage
fi




git ls-files | grep projects | grep images | grep -v unknown > bin/__images.txt
grep -h images $(git ls-files | grep rst ) | grep projects > bin/__links.txt
perl -pi -e "s/^.*\/(images.*(png|jpg|odp|xcf)).*$/doc\/\1/" bin/__links.txt
perl -ne '/doc.*(png|jpg)/ && print' bin/__links.txt > bin/__onlylinks.txt
sort -u bin/__onlylinks.txt > bin/__uniquelinks.txt

for line in `cat bin/__images.txt` ; do
    cmd="grep '$line'  bin/__uniquelinks.txt"
    found=$(eval $cmd)
    if [[ "$line" != "$found" ]] ; then 
        if [[ -n "$DRYRUN" ]]; then
            echo git rm $line
        else
            git rm $line
        fi
    fi
done

echo removing temporary files
rm bin/__images.txt
rm bin/__links.txt
rm bin/__onlylinks.txt
rm bin/__uniquelinks.txt

