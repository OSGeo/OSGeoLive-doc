:Author: Dane Springmeyer
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-mapnik.png
  :alt: project logo
  :align: right
  :target: http://mapnik.org/


Mapnik
================================================================================

Cartographic rendering engine
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Mapnik is a toolkit for rendering beautiful maps, with clean, soft feature edges provided by quality anti-aliasing graphics, intelligent label placement, and scalable, SVG symbolisation. Most famously, mapnik is used to render the OpenStreetMap main map layers.

Mapnik has typically been embedded in Python applications which deliver their maps over the internet although scaling improvements have meant that Mapnik has recently been getting used to create high resolution paper maps too.

.. image:: /images/screenshots/1024x768/mapnik-screenshot-barcelona.png
  :scale: 40 %
  :alt: screenshot
  :align: right

Essentially a collection of geographic objects (map, layer, datasource,
feature, geometry),  the library doesn't rely on "windowing systems" and
can be deployed in any server environment.  It is intended to play fair
in a multi-threaded environment and is aimed primarily,  but not
exclusively, at web-based development.

High-level Python bindings (boost.python) facilitate rapid application
development,  targeting zope3, django etc.

Mapnik is cross platform. Packages are available for most linux
distributions and installers are commonly used on Mac OS X and windows.

Details
--------------------------------------------------------------------------------

**Website:** http://www.mapnik.org/

**Licence:** LGPL (GNU Lesser General Public Licence)

**Software Version:** |version-mapnik|

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** C++, Python

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/mapnik_quickstart>`
