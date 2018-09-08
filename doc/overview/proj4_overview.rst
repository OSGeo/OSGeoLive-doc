:Author: OSGeoLive :Author: Mike Adair, Julien Moquet
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_proj4@
@OSGEO_KIND_proj4@

@NAME_proj4@
================================================================================

Proj4 is a library that provides methods to transform between different coordinate
reference systems. A geographic coordinate reference system allows all points on the
earth to be described as a set of coordinates (such as latitude, longitude and
elevation). Different systems are used to represent the 3 dimensional earth
on a flat, 2 dimensional map.

Proj4 is used in :doc:`MapServer <mapserver_overview>`, :doc:`GRASS GIS <grass_overview>`, :doc:`PostGIS <postgis_overview>`, :doc:`Mapnik <mapnik_overview>`, Thuban, OGDI, TopoCad, OGRCoordinateTransformation and various others. 

Proj4 has been translated from C to `other languages <http://trac.osgeo.org/metacrs/wiki>`.  These sub-projects include:
These tools include:
* Proj4js (JavaScript) - used in :doc:`OpenLayers <openlayers_overview>`.
* CS-Map (C++) - used in MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - website to retrieve coordinate system definitions (obsolete).

@SCREENSHOT_proj4@

Core Features
--------------------------------------------------------------------------------

* Provides point transformation from one coordinate reference system to another.
* Includes transformation between datums.
* Large number of projection classes supported.


Implemented Standards
--------------------------------------------------------------------------------

Proj4 uses coordinate system definitions defined by the 
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`.
Well Known Text (WKT) format.


Details
--------------------------------------------------------------------------------

  **Website:**  http://proj4.org/
  
  **Licence:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Software Version:** 4.9.2 (stable)
  
  **Supported Platforms:** Windows, Linux, Mac
  
  **API Interfaces:** C, C++, Python, Java, Ruby
  
  **Support:** http://lists.maptools.org/mailman/listinfo/proj

@QUICKSTART_proj4@

.. presentation-note
    Proj4 is a library that provides methods to transform between different coordinate reference systems. A geographic coordinate reference systems allows all points on the earth to be described as a set of coordinates (such as latitude, longitude and elevation). Different systems are used to represent the 3 dimensional earth on a flat, 2 dimensional map..
