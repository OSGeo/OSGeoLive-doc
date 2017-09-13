
# Locale

**Warning** for administrators only



- Installing the tx client: https://docs.transifex.com/client/installing-the-client
- Introduction to the client: https://docs.transifex.com/client/introduction
- Sphinx-intl installation: https://pypi.python.org/pypi/sphinx-intl
- Sphinx: http://www.sphinx-doc.org/en/stable/intl.html


To get latest pot files
```
cd build
cmake  -DLOCALE=ON ..
make locale > locale_log.txt
```

list .pot files
```
ls -R locale/pot
```

list a language's .po files for example spanish:
```
ls -R locale/es
```



## Change only what is needed

See the section **Which resources need change** before continuing.


### Push the resource to transifex

```
tx push --source -r test_osgeolive.sponsors_osgeo
```

### Pull transtlated strings

```
tx pull -r labtest_osgeolive.sponsors_osgeo -l es
```

Note: if the file is skip `-f` forces the pull but basically it means:

* locally the po file changed and no push of the resource was done.
* A translation has being downloaded and no further translations on the transifex file have being done 

### clean the build & build the documentation:

use capital letters for the language, this builds for Spanish
```
rm -rf *
cmake  -DBUILD_HTML=ON -DES=ON..
```

# Which resources need change:

The translation strings are in the po files.
The Engish transtlations should not change unless the documentation changed

### English

Check the English differences with the commited files
```
diff -r doc/_build/gettext/en ../locale/en
```

There might be no difference or the only difference is the creation date:
Sample dff on a file that has not changed output on a file:
```
diff -r doc/_build/locale/en/LC_MESSAGES/withPoints-family.po ../locale/en/LC_MESSAGES/withPoints-family.po
11c11
< "POT-Creation-Date: 2017-05-30 08:52-0500\n"
---
> "POT-Creation-Date: 2017-05-30 08:27-0500\n"
```

TODO: write a script that generates the names of the files that changed


### Other languages

Check the laguage differences with the commited files
```
diff -r doc/_build/locale/es ../locale/es
```

* there are no differences when the file has no translation

Sample output on a translated file:
```
36c39
< msgstr ""
---
> msgstr "Sinopsis"
```

## The pot files

Check the differences with the commited files
```
diff -r doc/_build/gettext/pot ../locale/pot
```

Sample output on a file:
```
diff doc/_build/gettext/VRP-category.pot ../locale/pot/VRP-category.pot
11c11
< "POT-Creation-Date: 2017-05-30 08:52-0500\n"
---
> "POT-Creation-Date: 2017-05-30 08:03-0500\n"
```

# Push to transifex only what is needed


## History:

The following commands are given to create the translation project in the testing repository

```
tx init
sphinx-intl update-txconfig-resources --pot-dir locale/pot  --transifex-project-name test_osgeolive
tx push
```
