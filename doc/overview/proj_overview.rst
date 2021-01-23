:Author: OSGeoLive :Author: Mike Adair, Julien Moquet
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Astrid Emde, OSGeo
:Version: osgeolive14.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_proj@
@OSGEO_KIND_proj@

@NAME_proj@
================================================================================

PROJ is a library that provides methods to transform between different coordinate
reference systems. A geographic coordinate reference system allows all points on the
earth to be described as a set of coordinates (such as latitude, longitude and
elevation). Different systems are used to represent the tridimensional earth
on a flat, bidimensional map.

PROJ is used in :doc:`MapServer <mapserver_overview>`, :doc:`GRASS GIS <grass_overview>`, :doc:`PostGIS <postgis_overview>`, :doc:`Mapnik <mapnik_overview>`, Thuban, OGDI, TopoCad, OGRCoordinateTransformation and various others. 

PROJ has been translated from C to `other languages <https://trac.osgeo.org/metacrs/wiki>`_. These sub-projects include:
These tools include:

* Proj4js (JavaScript) - used in :doc:`OpenLayers <openlayers_overview>`.
* CS-Map (C++) - used in MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <https://spatialreference.org/>`_ - website to retrieve coordinate system definitions (obsolete).

@SCREENSHOT_proj@

Core Features
--------------------------------------------------------------------------------

* Provides point transformation from one coordinate reference system to another.
* Includes transformation between datums.
* Large number of projection classes supported.


Implemented Standards
--------------------------------------------------------------------------------

PROJ uses coordinate system definitions defined by the 
`European Petroleum Survey Group (EPSG) <https://www.epsg.org/>`_.
Well Known Text (WKT) format.


Details
--------------------------------------------------------------------------------

**Website:** @WEB_proj@

**Licence:** `X/MIT Open Source license <https://proj.org/about.html#license>`_

**Software Version:** |version-proj|

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** C, C++, Python, Java, Ruby

**Support:** https://lists.osgeo.org/mailman/listinfo/proj

@VMDK_proj@
@QUICKSTART_proj@

.. presentation-note
    PROJ is a library that provides methods to transform between different coordinate reference systems. A geographic coordinate reference systems allows all points on the earth to be described as a set of coordinates (such as latitude, longitude and elevation). Different systems are used to represent the 3 dimensional earth on a flat, 2 dimensional map..
