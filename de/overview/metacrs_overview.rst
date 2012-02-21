:Author: OSGeo-Live
:Author: Mike Adair
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _metacrs-overview:

.. image:: ../../images/project_logos/logo-GDAL.png
  :scale: 60 %
  :alt: project logo
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

MetaCRS
================================================================================

Coordinate Reference System Transformations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/project_logos/logo-metacrs.png
  :scale: 100 %
  :alt: map projection example
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki


The group of MetaCRS projects provide libraries of methods to transform between difference coordinate reference systems.
A geographic coordinate reference systems allows all points on the earth to be described as set of coordinates (such as latitude, longitude and elevation). Different systems are used to represent the 3 dimensional earth on a flat, 2 dimensional map.

The MetaCRS libraries are included in other projects and some are also available via a command line interface.

The sub-projects that make up MetaCRS include:

* PROJ.4 (C++) - used in MapServer, GRASS GIS, PostGIS, Mapnik, Thuban, OGDI, TopoCad, OGRCoordinateTransformation and various others.
* Proj4js (JavaScript) - used in OpenLayers.
* CS-Map (C++) - used in MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - website to retrieve coordinate system definitions.

Kernfunktionen
--------------------------------------------------------------------------------

* Provides point transformation from one coordinate reference system to another.
* beinhaltet die Datumstransformation.
* eine Vielzahl von Projektionklassen wird unterstützt.


Implementierte Standards
--------------------------------------------------------------------------------

The projects typically use coordinate system definitions as defined by the 
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ and defined in
Well Known Text (WKT) format.

PROJ.4
--------------------------------------------------------------------------------

  **Webseite:**  http://trac.osgeo.org/proj/
  
  **Lizenz:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Software Version:** 4.7.0
  
  **Unterstützte Plattformen:** Windows, Linux, Mac
  
  **API Schnittstellen:** C, C++, Python, Java, Ruby
  
  **Support:** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
--------------------------------------------------------------------------------

  **Webseite:**  http://proj4js.org
  
  **Lizenz:** `LPGL <http://www.gnu.org/copyleft/lesser.html>`_
  
  **Software Version:** 1.0.1
  
  **Unterstützte Plattformen:** Windows, Linux, Mac
  
  **API Schnittstellen:** JavaScript
  
  **Support:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **Webseite:**  http://proj4js.org
  
  **Lizenz:** `custom <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_
  
  **Software Version:** 13.0
  
  **Unterstützte Plattformen:** Windows, Linux, Mac
  
  **API Schnittstellen:** C, C++

  **Support:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **Webseite:**  http://trac.osgeo.org/geotiff/
  
  **Lizenz:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Software Version:** 1.3.0
  
  **Support:** http://lists.maptools.org/mailman/listinfo/geotiff
  
Proj4J
--------------------------------------------------------------------------------

  **Webseite:**  http://trac.osgeo.org/proj4j/
  
  **Lizenz:** `Apache License, Version 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_
  
  **Software Version:** 
  
  **Unterstützte Plattformen:** Windows, Linux, Mac
  
  **API Schnittstellen:** Java
  
  **Support:** http://lists.osgeo.org/mailman/listinfo/proj4j
  
