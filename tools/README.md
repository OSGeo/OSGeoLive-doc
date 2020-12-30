

# Translation verification helper

Translators do not necesarly know sphinx syntax and their translations need to be verified and fixed
This process will be shown with `es` as example.
This assumes that transifex API is already downloaded


## Get commands of existing files

From the root of the repository generate the instructions needed to get the instructions
that will retrieve from transifex a file that already exists

```
bash tools/get_download_instructions_for_exisiting_files.sh es
```

Inspection of the file will have the commands that look as follow:
```
...
tx pull -l es -f -r osgeolive.overview--cesium_overview
tx pull -l es -f -r osgeolive.quickstart--cesium_quickstart
tx pull -l es -f -r osgeolive.contact
tx pull -l es -f -r osgeolive.copyright
...
```

## Download the files
From the root of the repository
```
bash get-existing-translations.sh
```

That will start the download of translations and it will look like:
```
tx INFO: Pulling translations for resource osgeolive.overview--cesium_overview (source: locale/pot/overview/cesium_overview.pot)
tx INFO:  -> es: locale/es/LC_MESSAGES/overview/cesium_overview.po
tx INFO: Done.
tx INFO: Pulling translations for resource osgeolive.quickstart--cesium_quickstart (source: locale/pot/quickstart/cesium_quickstart.pot)
tx INFO:  -> es: locale/es/LC_MESSAGES/quickstart/cesium_quickstart.po
tx INFO: Done.
tx INFO: Pulling translations for resource osgeolive.contact (source: locale/pot/contact.pot)
tx INFO:  -> es: locale/es/LC_MESSAGES/contact.po
tx INFO: Done.
tx INFO: Pulling translations for resource osgeolive.copyright (source: locale/pot/copyright.pot)
tx INFO:  -> es: locale/es/LC_MESSAGES/copyright.po
```

## Process the html
This step will help find sphynx syntax errors and where to find them
```
bash tools/process_html.sh es
```


### Error fixing
For example:
```
for classifier in reversed(node.parent.traverse(nodes.classifier)):
reading sources... [100%] sponsors_osgeo
/home/vicky/OSGeoLive/docs/cvvergara/build/doc/overview/inspire_overview.rst:25: WARNING: Inline interpreted text or phrase reference start-string without end-string.
/home/vicky/OSGeoLive/docs/cvvergara/build/doc/overview/inspire_overview.rst:25: WARNING: Inline interpreted text or phrase reference start-string without end-string.
/home/vicky/OSGeoLive/docs/cvvergara/build/doc/overview/inspire_overview.rst:38: WARNING: inconsistent term references in translated message. original: [':doc:`Re3gistry <re3gistry_overview>`'], translated: []
/home/vicky/OSGeoLive/docs/cvvergara/build/doc/overview/inspire_overview.rst:: WARNING: Anonymous hyperlink mismatch: 1 references but 0 targets.
See "backrefs" attribute for IDs.
```

There are errors on `inspire_overview.rst` which need to be fixed on the transifex website. Some times it is not an easy task.

Using your favorite editor. Find the lines where error happen:
```
vi <file where the error happened>
```
For this example
```
vi /home/vicky/OSGeoLive/docs/cvvergara/build/doc/overview/inspire_overview.rst
```
finding the lines:
```
 25   * Harmonise their spatial datasets in accordance with `common data models <https://inspire.ec.europa.eu/Data-Models/Data-Specifications/2892>`__ defined for each theme.
 26
 27~37 ...
 37
 38   * the `INSPIRE Registry <https://inspire.ec.europa.eu/registry>`__, based on the open source :doc:`Re3gistry <re3gistry_overview>` software, manages the unique identifiers and descriptions of INSPIRE resources such as t    hemes, code lists and application schemas;
```
So now on transifex look for the lines and fix
 (add figure here for line 25 & line 38 problems)

After fixing download is needed.
Find the command to download the fixed file
```
$ cat get-existing-translations.sh | grep inspire
tx pull -l es -f -r osgeolive.overview--inspire_overview
```
and execute the command:
```
tx pull -l es -f -r osgeolive.overview--inspire_overview
```
If there is an error that its not understandable or difficult to find, Just leave it like it is, we will fix it later.
For example: there is no hint on where is the problem on this error
```
/home/vicky/OSGeoLive/docs/cvvergara/build/doc/overview/inspire_overview.rst:: WARNING: Anonymous hyperlink mismatch: 1 references but 0 targets.
See "backrefs" attribute for IDs.
```

### When there are many files with errors

If when executing the `process_html.sh` and work by file, only that file will be regenerated.
To generate everything again:
```
rm -rf build/*
bash tools/process_html.sh es
```


## Check links
This step will help find problems with links
```
bash tools/check_links.sh es
```

If there is a problem, do the same process described above


## Commit the work done
```
git commit -a -m '[es] Updating latest translationsc
```


