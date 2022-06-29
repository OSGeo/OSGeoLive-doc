Building OSGeoLive Documentation
================================

The following steps describe how to build OSGeoLive_ documentation on an Ubuntu
based operating system (such as Lubuntu).

https://osgeo.github.io/OSGeoLive-doc/ - automated publication of latest docs from GitHub.
You can see the [build script here](.travis.yml).

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
using Sphinx. reSt is similar to wiki markup, and readable in plain ASCII. As a
quick check, GitHub will (partially) render reSt documents as HTML.

Build steps
~~~~~~~~~~~

Following the steps below on the OSGeoLive Virtual Machine itself is one of the easiest ways
to build the OSGeoLive documentation.

First install Python and create a virtual environment.

1.0 Requirements
You might need to install `git` and `cmake` if they are not on your system yet.
::
   # Install git and cmake
   sudo apt-get install git cmake


1.1 For Python 3
::
   # Install pip
   sudo apt-get install python3-pip
   sudo apt-get install python3-venv

   # Prepare python environment
   python3 -m venv py-env

   # activate the environment
   source py-env/bin/activate

   # Python requirements
   pip install -r requirements.txt

1.2 Requirements for the presentation

::
   sudo apt-get install cpanminus
   sudo cpanm Text::SimpleTable::AutoWidth


2.1 For Ubuntu 20.04 (Focal Fossa)
To build onto Focal Fossa, you will need `specific packages <https://github.com/OSGeo/OSGeoLive-doc/blob/master/debian/control#L5-L12>`_:
::
   # Packages required for doc building on Ubuntu 20.04
   sudo apt install debhelper python3-sphinx python3-stemmer python3-pil \
   pngquant cmake libtext-simpletable-autowidth-perl \

.. TODO sphinx-revealjs is now used
   python3-sphinxjp.themes.revealjs

3. Clone or download OSGeoLive source documentation
::
   git clone https://github.com/OSGeo/OSGeoLive-doc.git

4. Generate the English documentation
::
   cd OSGeoLive-doc
   mkdir build
   cd build
   cmake -DHTML=ON ..
   make
   cd ..

The output is in `build/doc/_build/html/`

5. Generate another language documentation
::
   cd build
   cmake -DHTML=ON -DFR=ON ..
   make
   cd ..

Adding -DFR=ON adds the French language, adding another -DES=ON adds Spanish, and so on.
The output is also in `build/doc/_build/html/`

6. To build all available languages
::
   cd build
   cmake -DHTML=ON -DALL_LANG=ON ..
   make
   cd ..

7. *Optional*: reduce the size of the generated documentation
::
   bash scripts/clean-images.sh

Contributing:
~~~~~~~~~~~~~

Information about how to document the projects on OSGeoLive can be found on the OSGeoLive wiki: https://trac.osgeo.org/osgeolive/wiki

* `How to document a project <https://trac.osgeo.org/osgeolive/wiki/How%20to%20document%20a%20project>`__
* `How to configure project documentation <https://trac.osgeo.org/osgeolive/wiki/How%20to%20configure%20a%20project%20documentation>`__
* `How to document the overview file <https://trac.osgeo.org/osgeolive/wiki/How%20to%20document%20the%20overview%20file>`__
* `How to document the quickstart file <https://trac.osgeo.org/osgeolive/wiki/How%20to%20document%20the%20quickstart%20file>`__

References:
~~~~~~~~~~~

* https://wiki.osgeo.org/wiki/Live_GIS_Add_Project#Application_Overview

* https://www.sphinx-doc.org

* http://docutils.sf.net/rst.html

* http://matplotlib.sourceforge.net/sampledoc/

* https://osgeo.github.io/OSGeoLive-doc/ - automated publication of latest docs from GitHub

.. _OSGeoLive: https://live.osgeo.org
