#!/bin/bash
# ------------------------------------------------------------------------------
# pgRouting Scripts
# Copyright(c) pgRouting Contributors
#
# Initially create POT files (probably not necessary)
# ------------------------------------------------------------------------------

cd "$(git rev-parse --show-toplevel)" || exit 1

mkdir -p build || exit 1
pushd build || exit 1
cmake -DLOCALE=ON ..
make locale
popd

echo "*************************************************************************"
echo "Configuring resources"
echo "*************************************************************************"
sphinx-intl --config build/docs/conf.py update-txconfig-resources --pot-dir locale/pot --transifex-project-name pgrouting-workshop
perl -pi -e 's/\[osgeolive\./\[o:osgeo:p:osgeolive:r:/' .tx/config

echo "*************************************************************************"
echo "To push to transifex with command:"
echo "deactivate"
echo "tx push -s"
echo "*************************************************************************"
