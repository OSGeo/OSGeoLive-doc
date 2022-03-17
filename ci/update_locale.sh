# ------------------------------------------------------------------------------
# GitHub Actions scripts 
# Copyright(c) OSGeoLive Contributors
#
# Main configuration
# ------------------------------------------------------------------------------

DIR=$(git rev-parse --show-toplevel)
pushd "${DIR}" > /dev/null || exit
pushd build > /dev/null || exit

# build the locale
cmake -DLOCALE=ON ..
make locale
popd

# update .tx/config to add all the new/missing resources or fixing old resources naming
sphinx-intl update-txconfig-resources --locale-dir locale --pot-dir locale/pot --transifex-project-name osgeolive
perl -pi -e 's/\[osgeolive\./\[o:osgeo:p:osgeolive:r:/' .tx/config
# add the changes
git add .tx/config

# List all the files that need to be committed in build/doc/locale_changes.txt                                
awk '/^Update|^Create/{print $2}' build/doc/locale_changes.txt > tmp && mv tmp build/doc/locale_changes.txt        # .po files
cat build/doc/locale_changes.txt | perl -pe 's/(.*)en\/LC_MESSAGES(.*)/$1pot$2t/' >> build/doc/locale_changes.txt  # .pot files
#cat build/doc/locale_changes.txt

# Remove obsolete entries #~ from .po files
scripts/remove_obsolete_entries.sh

# Add the files, commit and push
for line in `cat build/doc/locale_changes.txt`; do git add "$line"; done

# Remove the unstaged changes
git restore .

popd
