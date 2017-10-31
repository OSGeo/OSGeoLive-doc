:Author: OSGeo-Live
:Author: Mike Adair
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.9
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_metacrs@
@OSGEO_KIND_metacrs@


MetaCRS
================================================================================

Coordinate Reference System Transformations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/project_logos/logo-metacrs.png
  :alt: map projection example
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki


`The group of MetaCRS projects <http://trac.osgeo.org/metacrs/wiki>`_ provide
libraries of methods to transform between different coordinate reference
systems. A geographic coordinate reference systems allows all points on the
earth to be described as set of coordinates (such as latitude, longitude and
elevation). Different systems are used to represent the 3 dimensional earth
on a flat, 2 dimensional map.

The MetaCRS libraries are included in other projects and some are also
available via a command line interface.

The sub-projects that make up MetaCRS include:

* PROJ.4 (C++) - used in :doc:`MapServer <mapserver_overview>`, :doc:`GRASS GIS <grass_overview>`, :doc:`PostGIS <postgis_overview>`, :doc:`Mapnik <mapnik_overview>`, Thuban, OGDI, TopoCad, OGRCoordinateTransformation and various others.
* Proj4js (JavaScript) - used in :doc:`OpenLayers <openlayers_overview>`.
* CS-Map (C++) - used in MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - website to retrieve coordinate system definitions.

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
--------------------------------------------------------------------------------

  **Website:**  http://trac.osgeo.org/proj/
  
  **Licence:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Software Version:** 4.8.0
  
  **Supported Platforms:** Windows, Linux, Mac
  
  **API Interfaces:** C, C++, Python, Java, Ruby
  
  **Support:** http://lists.maptools.org/mailman/listinfo/proj

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
  
