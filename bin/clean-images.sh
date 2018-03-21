

cd build/doc/_build/html
mv en/_images .
rm -rf */_images/
perl -pi -e 's/_images/\.\.\/_images/g' `find ./ -name "*.html"`

