:Author: OSGeo-Live
:Author: Mike Adair, Julien Moquet
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. (no logo) .. image:: ../../images/project_logos/logo-proj4.png
..  :alt: project logo
..  :align: right
..  :target: http://proj4.org/index.html

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

Proj.4
================================================================================

Proj4 is a library that provides methods to transform between different coordinate
reference systems. A geographic coordinate reference systems allows all points on the
earth to be described as set of coordinates (such as latitude, longitude and
elevation). Different systems are used to represent the 3 dimensional earth
on a flat, 2 dimensional map.

Proj4 is written in C++. It is used in :doc:`MapServer <mapserver_overview>`, :doc:`GRASS GIS <grass_overview>`, :doc:`PostGIS <postgis_overview>`, :doc:`Mapnik <mapnik_overview>`, Thuban, OGDI, TopoCad, OGRCoordinateTransformation and various others. 
 
Proj4 has been translated from C to a number of other languages (See `The group of Proj4 projects (MetaCRS) <http://trac.osgeo.org/metacrs/wiki>`_. Some are also
available via a command line interface.
These tools include:
* Proj4js (JavaScript) - used in :doc:`OpenLayers <openlayers_overview>`.
* CS-Map (C++) - used in MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - website to retrieve coordinate system definitions (obsolete).

Proj.4 Core Features
--------------------------------------------------------------------------------

* Provides point transformation from one coordinate reference system to another.
* Includes transformation between datums.
* Large number of projection classes supported.


Implemented Standards
--------------------------------------------------------------------------------

The projects typically use coordinate system definitions as defined by the 
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ and defined in
Well Known Text (WKT) format.


Details
--------------------------------------------------------------------------------

  **Website:**  http://proj4.org/
  
  **Licence:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Software Version:** 4.9.2 (stable)
  
  **Supported Platforms:** Windows, Linux, Mac
  
  **API Interfaces:** C, C++, Python, Java, Ruby
  
  **Support:** http://lists.maptools.org/mailman/listinfo/proj

Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/proj4_quickstart>`

