#!/bin/bash

set -e

VERSION=$(($(grep 'OSGeoLiveDoc_VERSION_MAJOR' CMakeLists.txt | grep -Eo '[0-9]*') -1))

# Make sure no double spaces
tr -s ' ' < projects_info.csv > temp.txt && mv temp.txt projects_info.csv
# Make sure space between '||'
perl -pi -e 's/\|\|/\| \|/' projects_info.csv

if [ -z "$1" ]
then
  echo "Usage from the root of the repository:"
  echo "bash scripts/retire_project.sh <project slugs>"
  echo "Example:"
  echo "bash scripts/retire_project.sh slug1 slug2"
  echo "A commit per slug will be generated"
fi


PROJECTS=$@
echo "$PROJECTS"
for d in ${PROJECTS} ; do
  echo "---------------------"
  echo "--- PROCESSING $d ---"
  echo "---------------------"
  COMMIT_MSG="[${d}] retire a project"

  line=$(git grep -h "${d}" projects_info.csv)
  newline="${line/[Y|N]/N}"
  newline="${newline/|[ |$VERSION]|/| $VERSION |}"
  grep -v "${d}" projects_info.csv > _temp.csv && mv _temp.csv projects_info.csv
  echo $newline >> projects_info.csv

  echo "${COMMIT_MSG}"
  git rm -q $(git ls-files | grep "${d}")
  git add projects_info.csv
  git commit -m "${COMMIT_MSG}"
done
