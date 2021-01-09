#TODO add a message when the language is missing

mkdir -p build
cd build || exit 1


cmake -DHTML=ON -DFI=ON -DFR=ON -DDE=ON -DHU=ON -DES=ON -DJA=ON -DIT=ON -DLINKCHECK=ON ..
make html-$1


