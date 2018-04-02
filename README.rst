OSGeo live documentation
========================
OSGeoLive_ is a self-contained bootable DVD, USB thumb drive or Virtual
Machine based on Lubuntu, that allows you to try a wide variety of open source
geospatial software without installing anything. It is composed entirely of
free software, allowing it to be freely distributed, duplicated and passed
around.

This repository contains the documentation for OSGeo live.

reStructured Text
~~~~~~~~~~~~~~~~~

The majority of our documentation is generated from reStructured text sources
using Sphinx. reSt is similar to wiki markup, and readable in plain ascii. As a
quick check, github will (partially) render reSt documents as HTML.

1. Install python and sphinx version 1.6.5 or greater (as provided with Ubuntu >16.04), (install_main_docs.sh does this too)
::
   pip install sphinx==1.6.5
   pip install sphinx-intl
   pip install sphinxjp.themes.revealjs
   sudo apt-get install cpanminus
   sudo cpanm Text::SimpleTable::AutoWidth


2. Clone or download the documentation
::
   git clone https://github.com/OSGeo/OSGeoLive-doc.git

3. Generate the English documentation
::   
   mkdir build
   cd build
   cmake -DHTML=ON ..
   make
   cd ..

   The output is in build/doc/_build/html/

4. Generate another language documentation
::
   mkdir build
   cd build
   cmake -DHTML=ON -DFR=ON ..
   make
   cd ..

   The output is also in build/doc/_build/html/

5. Optional: reduce the size of the generated documentation
::
   bash bin/clean-images.sh


References:
~~~~~~~~~~~

* http://wiki.osgeo.org/wiki/Live_GIS_Add_Project#Application_Overview

* http://sphinx.pocoo.org

* http://docutils.sf.net/rst.html

* http://matplotlib.sourceforge.net/sampledoc/

.. _OSGeoLive: https://live.osgeo.org
