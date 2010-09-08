.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo Live
:Version: osgeo-live4.0
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _qgis-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/<filename>

.. image:: images/project_logos/logo-QGIS.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://www.qgis.org

.. image:: images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


.. Writing Tip: Name of application

Quantum GIS
===========

.. Writing Tip:
  Application Category Description:
  * Spatial Database
  * Web Service
  * Metadata Web Service
  * Desktop GIS
  * Browser GIS client
  * Business Intelligence
  * GIS Tools
  * ...

Desktop GIS
~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  
Quantum GIS (QGIS) is a user friendly, Open Source, GIS client where
you can visualize, manage, edit, analyse data, and compose printable maps.
It includes powerful analytical functionality through integration with GRASS.
It runs on Linux, Unix, Mac OSX, and Windows and supports numerous vector,
raster and database formats and functionality.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: images/screenshots/1024x768/qgis.png
  :scale: 50 %
  :alt: project logo
  :align: right

Core Features
-------------

* Friendly graphical user interface.

    * identify/select features,
    * edit/view/search attributes,
    * on the fly projection,
    * print composer,
    * feature labeling,
    * change vector and raster symbology,
    * add a graticule layer,
    * and more ...

* Easy Viewing of many Vector and Raster Formats

    * PostgreSQL Database tables
    * most vector formats: including ESRI shapefiles, MapInfo, SDTS and GML.
    * raster formats such as digital elevation models, aerial photography or landsat imagery,
    * GRASS locations and mapsets,
    * online spatial data served as OGC-compliant WMS or WFS;

* Create, edit and export spatial data using:

    * digitizing tools for GRASS and shapefile formats,
    * the georeferencer plugin,
    * GPS tools to import and export GPX format, convert other GPS formats to GPX, or down/upload directly to a GPS unit

* Perform spatial analysis using fTools or GRASS plugins

    * map algebra,
    * terrain analysis,
    * hydrologic modeling,
    * network analysis,
    * and many others

* Publish to the internet
* Extensible plugin architecture.

.. Writing Tip:
  Optional: A second screenshot can sometimes be added here
  if there is sufficient room.
  .. image:: images/screenshots/1024x768/qgis.png
    :scale: 50 %
    :alt: project logo
    :align: right

Implemented Standards
---------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards compliant (WMS,WFS(Plugin))

Details
-------

**Website:** http://www.qgis.org

**Licence:** GPL

**Software Version:** 1.5.0

**Supported Platforms:** Windows, Linux, Mac, Unix

.. Writing Tip:
  Link to jump page which lists commercial support for the application.

**Community Support:** http://qgis.org/en/community.html

**Commercial Support:** http://qgis.org/en/commercial-support.html

.. Writing Tip:
  Later, we may introduce a Maturity Rating, but currently the format, and
  whether we go ahead with such a rating is still under discussion.
  http://wiki.osgeo.org/wiki/Marketing_Artefacts#Maturity_Rating
