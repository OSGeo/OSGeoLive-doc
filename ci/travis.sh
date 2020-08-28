# ------------------------------------------------------------------------------
# Travis CI scripts 
# Copyright(c) pgRouting Contributors
#
# Main configuration
# ------------------------------------------------------------------------------
if [ "$LINKCHECK" == "ON" ]
then
  cmake -DES=ON -DFI=ON -DDE=ON -DLINKCHECK=ON ..
  make linkcheck-en
  make linkcheck-es
  make linkcheck-fi
  make linkcheck-de

else
  cmake -DHTML=ON -DFI=ON -DIT=ON -DJA=ON -DES=ON -DFR=ON -DDE=ON -DHU=ON -@OSGeoLiveDoc_DEBUG=ON ..
  make
  cd ..
  bash scripts/clean-images.sh
  touch build/doc/_build/html/.nojekyll # needed for gh pages to keep dirs starting with _
  du -h build/doc/_build/html
fi
