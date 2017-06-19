:Author: OSGeo-Live
:Author: Mike Adair, Julien Moquet
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. (no logo) .. image:: ../../images/project_logos/logo-GDAL.png
..  :alt: project logo
..  :align: right
..  :target: http://proj4.org/index.html

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

Proj4 (MetaCRS)
================================================================================

Coordinate Reference System Transformations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/project_logos/logo-proj4.png
  :alt: map projection example
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki

`The group of Proj4 projects (MetaCRS) <http://trac.osgeo.org/metacrs/wiki>`_ provide
libraries of methods to transform between different coordinate reference
systems. A geographic coordinate reference systems allows all points on the
earth to be described as set of coordinates (such as latitude, longitude and
elevation). Different systems are used to represent the 3 dimensional earth
on a flat, 2 dimensional map.

The main project is PROJ.4 and is written in C++. It is used in :doc:`MapServer <mapserver_overview>`, :doc:`GRASS GIS <grass_overview>`, :doc:`PostGIS <postgis_overview>`, :doc:`Mapnik <mapnik_overview>`, Thuban, OGDI, TopoCad, OGRCoordinateTransformation and various others.

The other Proj4 libraries are included in other projects and some are also
available via a command line interface.
These sub-projects that make up Proj4 include:
* Proj4js (JavaScript) - used in :doc:`OpenLayers <openlayers_overview>`.
* CS-Map (C++) - used in MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - website to retrieve coordinate system definitions (obsolete).

Core Features
--------------------------------------------------------------------------------

* Provides point transformation from one coordinate reference system to another.
* Includes transformation between datums.
* Large number of projection classes supported.


Implemented Standards
--------------------------------------------------------------------------------

The projects typically use coordinate system definitions as defined by the 
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ and defined in
Well Known Text (WKT) format.

PROJ.4
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

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



Other libraries
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Proj4js
--------------------------------------------------------------------------------

  **Website:**  http://proj4js.org
  
  **Licence:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Supported Platforms:** Windows, Linux, Mac
  
  **API Interfaces:** JavaScript
  
  **Support:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **Website:**  http://trac.osgeo.org/csmap/
  
  **Licence:** `custom <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_
  
  **Supported Platforms:** Windows, Linux, Mac
  
  **API Interfaces:** C, C++

  **Support:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **Website:**  http://trac.osgeo.org/geotiff/
  
  **Licence:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Software Version:** 1.4.0
  
  **Support:** http://lists.maptools.org/mailman/listinfo/geotiff
  
Proj4J
--------------------------------------------------------------------------------

  **Website:**  http://trac.osgeo.org/proj4j/
  
  **Licence:** `Apache License, Version 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_
  
  **Supported Platforms:** Windows, Linux, Mac
  
  **API Interfaces:** Java
  
  **Support:** http://lists.osgeo.org/mailman/listinfo/proj4j

