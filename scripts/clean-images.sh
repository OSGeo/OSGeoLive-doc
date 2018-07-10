#!/bin/sh
#############################################################################
#
# Purpose:
# Removes duplicated images generated when more than one language is generated
#
# Author: Vicky Vergara Vicky Vergara <vicky_vergara@hotmail.com>
#
#############################################################################
# Copyright (c) 2018 Open Source Geospatial Foundation (OSGeo)
#
# Licensed under the GNU LGPL.
#
# This library is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 2.1 of the License,
# or any later version.  This library is distributed in the hope that
# it will be useful, but WITHOUT ANY WARRANTY, without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Lesser General Public License for more details, either
# in the "LICENSE.LGPL.txt" file distributed with this software or at
# web page "http://www.fsf.org/licenses/lgpl.html".
#############################################################################


cd build/doc/_build/html

# Copy the images generated on the english documentation
mv en/_images .
mv en/_static .

# Remove the images of the other languages
rm -rf */_images/
rm -rf */_static/

# Fix the links to the new image locations
perl -pi -e 's/_images/\.\.\/_images/g' `find ./ -name "*.html"`

# Fix the links to the new _static locations
perl -pi -e 's/_static/\.\.\/_static/g' `find ./ -name "*.html"`


rm -rf _static/CMakeFiles
rm -rf _static/img/CMakeFiles
rm -rf _static/lib/font/league-gothic/
rm -rf _static/lib/font/ource-sans-pro/
rm -rf */.doctrees
rm -f _static/img/cmake_install.cmake
rm -f _static/img/Makefile
rm -f _static/plugin/markdown/example.html
rm -f _static/reveal.js/plugin/markdown/example.html

# serif.css
css_not_used="beige.css  black.css  blood.css  default.css  league.css  moon.css  night.css  simple.css  sky.css  solarized.css  white.css"
for file in $css_not_used ; do
rm -f _static/css/theme/$file
rm -f _static/reveal.js/css/theme/$file
done

# highlight  markdown   notes  print-pdf zoom-js"
plugin_not_used="leap          math         multiplex        notes-server int-pdf    remotes      search"       

for file in $plugin_not_used ; do
rm -rf _static/plugin/$file
rm -rf _static/reveal.js/plugin/$file
done

