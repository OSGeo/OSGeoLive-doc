
# Locale

## new/modified resource

When a new rst file is been processed

* new 
  * .tx/config needs to be created
  * pot & english po files need to be created
* update 
  * pot & english po files need to be updated

Note: This process is done automatically on the github actions

### Manual change

```
bash ci/update_locale.sh
```

## Download translations

This is needed for translator reviewer to check & fix the sphinx build

work on 2 terminals
* one with the python environment on (termA)
* other without python environment (termB)

For this example we are using the french language

Process:
* Download based on percentage translated (from the root of the repository)

```
termB$ tx pull -l fr --minimum-perc=80 --skip
```

* Build localy on termA

```
mkdir -p build
cd build
cmake -DFR=ON ..
make html-fr
```

* Look for errors and fix on transifex
Suppose errors were fixed on overview--52nSOS_overview then download only that resource

```
tx pull -l fr -r osgeolive.overview--52nSOS_overview
```

Repeat until the most amount of errors could be fixed

## commit push and make a PR.

Please commit your work and push
```
git add locale/fr
git commit -m '[fr] adding french translations'
git push
```
note make sure the commit message has the language enclosed in square braquets.

Make a Pull Request.
Further fixes are going to be done by the OSGeoLive team.

