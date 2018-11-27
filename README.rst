Building OSGeoLive documentation
================================

The following steps describe how to build OSGeoLive_ documentation on an Ubuntu
based operating system (such as Lubuntu). 

About OSGeoLive
~~~~~~~~~~~~~~~

OSGeoLive_ is a self-contained bootable DVD, USB thumb drive or Virtual
Machine based on Lubuntu, that allows you to try a wide variety of open source
geospatial software without installing anything. It is composed entirely of
free software, allowing it to be freely distributed, duplicated and passed
around.

reStructured Text
~~~~~~~~~~~~~~~~~

The majority of OSGeoLive documentation is generated from reStructured text (reSt) sources
using Sphinx. reSt is similar to wiki markup, and readable in plain ascii. As a
quick check, github will (partially) render reSt documents as HTML.

Build steps
~~~~~~~~~~~

1. Install python and sphinx version 1.6.5 or greater (as provided with Ubuntu >16.04), (install_main_docs.sh does this too)

For Python 2
::
   cd /root/of/repo

   # Install pip
   sudo apt-get install python-pip

   # Prepare python environment
   pip install virtualenv
   virtualenv py-env

   # activate the environment
   source py-env/bin/activate

   # install the requirements
   pip install sphinx==1.6.5
   pip install sphinx-intl
   pip install sphinxjp.themes.revealjs

   # Requirements for the presentation
   sudo apt-get install cpanminus
   sudo cpanm Text::SimpleTable::AutoWidth

For Python 3
::
   cd /root/of/repo

   # Install pip
   sudo apt-get install python3-pip
   sudo apt-get install python3-venv

   # Prepare python environment
   python3 -m venv py-env

   # activate the environment
   source py-env/bin/activate

   # install the requirements
   pip install sphinx==1.6.5
   pip install sphinx-intl
   pip install sphinxjp.themes.revealjs

   # Requirements for the presentation
   sudo apt-get install cpanminus
   sudo cpanm Text::SimpleTable::AutoWidth
  
::

1.2 Install the requirements
   sudo pip install sphinx==1.6.5
   sudo pip install sphinx-intl
   sudo pip install sphinxjp.themes.revealjs
   sudo apt-get install cpanminus
   sudo cpanm Text::SimpleTable::AutoWidth

2. Clone or download OSGeoLive source documentation
::
   git clone https://github.com/OSGeo/OSGeoLive-doc.git

3. Generate the English documentation
::   
   cd OSGeoLive-doc
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

Adding -DFR=ON adds the French language, adding another -DES=ON adds Spanish, and so on. 
The output is also in build/doc/_build/html/

5. Optional: reduce the size of the generated documentation
::
   bash scripts/clean-images.sh


References:
~~~~~~~~~~~

* http://wiki.osgeo.org/wiki/Live_GIS_Add_Project#Application_Overview

* http://sphinx.pocoo.org

* http://docutils.sf.net/rst.html

* http://matplotlib.sourceforge.net/sampledoc/

.. _OSGeoLive: https://live.osgeo.org
