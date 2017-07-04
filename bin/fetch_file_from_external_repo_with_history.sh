#!/bin/bash

###############################################################################
#  Copyright (c) 2016, Vicky Vergara <vicky_vergara@hotmail.com>
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
# bin/fetch_file_from_external_repo_with_history.sh learnosm  _posts/en 0200-12-23-id-editor.md   1900-12-21-start-josm.md

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
    echo  from an external repository, gets a set of files located in the same directory
    echo  It takes time
    echo  It leaves the commit pending
    echo
    echo Before execution prepare a clone of the external repository:
    echo
    echo cd ..
    echo "git clone <external repository not related to current repository>"
    echo
    echo If it already exists: make sure its updated and on the desired branch
    echo
    echo This script is to be executed from the root of the repository where the files are needed
    echo
    echo "bash path/to/fetch_file_from_exterbal_repo_with_history.sh <repository> <path/to/files/> <files>"
    echo 
    echo repository: name of external repository repository
    echo path/to/files/: path from root of external repository to directory of the file
    echo files: file names located on external repository on the path indicated
    
    echo
    exit 1
}

TOPLEVELPATH=`git rev-parse --show-toplevel`
THISPATH=`pwd`

echo $TOPLEVELPATH
echo $THISPATH

if [[ "$TOPLEVELPATH" != "$THISPATH" ]]; then
    print_error "ERROR: not on root of repository"
    print_usage
fi

if [  "$#" -lt 2 ] ; then
    print_error "ERROR: parameter(s) missing"
    print_usage
fi

REPOSITORY=$1 
shift
PATHTOFILE=$1 
shift

cd ..
PARENTPATH=`pwd`
echo parent path $PARENTPATH


if [ ! -d "$REPOSITORY"  ] ; then
    print_error "ERROR: $REPOSITORY clone not found"
    print_usage
fi


if [ -d "$REPOSITORY-temp"  ] ; then
    rm -rf "$REPOSITORY-temp"
fi

echo making backup of $REPOSITORY
cp -r "$REPOSITORY" "$REPOSITORY-temp"

cd "$REPOSITORY-temp"
echo removing 'origin' remote
git remote rm origin

echo filtering subdirectory $PATHTOFILE
git filter-branch --subdirectory-filter $PATHTOFILE -- --all

IGNOREFILES=""

for file in "$@"; do
    IGNOREFILES="${IGNOREFILES} -not -name  ${file} "
done

echo $IGNOREFILES


echo "removing other files NOT IN ( $* )"
REMOVEFILES=`find . -maxdepth 1 -type f $IGNOREFILES`
REMOVEFILES=`echo $REMOVEFILES | tr '\n' ' '`

git rm ${REMOVEFILES}
git commit -a -m 'removing non interesting files from external repository'
CURRENTBRANCH=$(git rev-parse --abbrev-ref HEAD)


cd $TOPLEVELPATH


echo adding $REPOSITORY-temp as remote repository
git remote add $REPOSITORY-temp "$PARENTPATH/$REPOSITORY-temp"

echo fetching $REPOSITORY-temp repository
git fetch "$REPOSITORY-temp"


echo ---------------------------------------------
echo ---------------------------------------------
echo Merge is about to start.
echo   -- read this instrcutions:
echo ---------------------------------------------
echo ---------------------------------------------
echo Non automated tasks
echo ---------------------------------------------
echo ---------------------------------------------
echo
echo -- Check that all expected files are there
echo 
echo ls
echo
echo -- If a file is missing:
echo
echo "git checkout $REPOSITORY-temp/$CURRENTBRANCH <missing-file>"
echo 
echo -- make a commit before changing names or moving files
echo
echo "git blame <file>"
echo "git commit -a -m 'adding files $@ from $REPOSITORY"
echo
echo -- Delete the remote
echo
echo "git remote rm $REPOSITORY-temp"
echo
echo -- Remove the working directory
echo
echo "rm -rf ../$REPOSITORY-temp"
echo
echo After that you can modify, rename etc the files

sleep 20

echo "git merge $REPOSITORY-temp/$CURRENTBRANCH --allow-unrelated-histories --no-commit"
git merge "$REPOSITORY-temp/$CURRENTBRANCH" --allow-unrelated-histories --no-commit

exit 0
