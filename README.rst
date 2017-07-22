OSGeo live documentation
========================
OSGeo-Live_ is a self-contained bootable DVD, USB thumb drive or Virtual
Machine based on Lubuntu, that allows you to try a wide variety of open source
geospatial software without installing anything. It is composed entirely of
free software, allowing it to be freely distributed, duplicated and passed
around.

This repository contains the documentation for OSGeo live.

reStructured Text
~~~~~~~~~~~~~~~~~

The majority of our documentation is generated from reStructured text
sources using Sphinx. reSt is similar to wiki markup, and readable in
plain ascii. As a quick check, the Trac system viewer will (partially)
render reSt documents as HTML from the online SVN browser.

1. Install python and sphinx version 0.6.4 or greater (as provided with Ubuntu >10.04), (install_main_docs.sh does this too)
::
   sudo apt-get install python-sphinx

2. The included make file will generate the documentation
::
   git clone https://github.com/OSGeo/OSGeoLive-doc.git
   cd OSGeoLive-doc
   make html

   View output in _build/html/en/index.html

References:
~~~~~~~~~~~

* http://wiki.osgeo.org/wiki/Live_GIS_Add_Project#Application_Overview

* http://sphinx.pocoo.org

* http://docutils.sf.net/rst.html

* http://matplotlib.sourceforge.net/sampledoc/

.. _OSGeo-Live: https://live.osgeo.org
