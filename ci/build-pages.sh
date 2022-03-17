# ------------------------------------------------------------------------------
# GitHub Actions scripts 
# Copyright(c) pgRouting Contributors
#
# Main configuration
# ------------------------------------------------------------------------------

DIR=$(git rev-parse --show-toplevel)
pushd "${DIR}" > /dev/null || exit
pushd build > /dev/null || exit
cmake -DHTML=ON -DFI=ON -DIT=ON -DJA=ON -DES=ON -DFR=ON -DDE=ON -DHU=ON -DOSGeoLiveDoc_DEBUG=ON ..
make
popd 
bash scripts/clean-images.sh
touch build/doc/_build/html/.nojekyll # needed for gh pages to keep dirs starting with _
du -h build/doc/_build/html
popd
