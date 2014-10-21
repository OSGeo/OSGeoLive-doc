:Author: OSGeo-Live
:Author: Mike Adair
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. (no logo) .. image:: ../../images/project_logos/logo-GDAL.png
..  :alt: project logo
..  :align: right
..  :target: http://trac.osgeo.org/metacrs/wiki

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

MetaCRS
================================================================================

Transformacje pomiędzy układami współrzędnych
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/project_logos/logo-metacrs.png
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

* PROJ.4 (C++) - używany w :doc:`MapServer <mapserver_overview>`, :doc:`GRASS GIS <grass_overview>`, :doc:`PostGIS <postgis_overview>`, :doc:`Mapnik <mapnik_overview>`, Thuban, OGDI, TopoCad, OGRCoordinateTransformation i wielu innych.
* Proj4js (JavaScript) - używany w :doc:`OpenLayers <openlayers_overview>`.
* CS-Map (C++) - używany w MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - Strona internetowa to retrieve coordinate system definitions.

Główne funkcje
--------------------------------------------------------------------------------

* Provides point transformation from one coordinate reference system to another.
* Includes transformation between datums.
* Large number of projection classes supported.


Zaimplementowane standardy
--------------------------------------------------------------------------------

The projects typically use coordinate system definitions as defined by the 
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ and defined in
Well Known Text (WKT) format.

PROJ.4
--------------------------------------------------------------------------------

  **Strona internetowa:**  http://trac.osgeo.org/proj/
  
  **Licencja:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Wersja programu:** 4.7.0
  
  **Systemy operacyjne:** Windows, Linux, Mac
  
  **Interfejsy API:** C, C++, Python, Java, Ruby
  
  **Wsparcie:** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
--------------------------------------------------------------------------------

  **Strona internetowa:**  http://proj4js.org
  
  **Licencja:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Wersja programu:** 1.1.0
  
  **Systemy operacyjne:** Windows, Linux, Mac
  
  **Interfejsy API:** JavaScript
  
  **Wsparcie:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **Strona internetowa:**  http://trac.osgeo.org/csmap/
  
  **Licencja:** `custom <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_
  
  **Wersja programu:** 13.0
  
  **Systemy operacyjne:** Windows, Linux, Mac
  
  **Interfejsy API:** C, C++

  **Wsparcie:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **Strona internetowa:**  http://trac.osgeo.org/geotiff/
  
  **Licencja:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Wersja programu:** 1.4.0
  
  **Wsparcie:** http://lists.maptools.org/mailman/listinfo/geotiff
  
Proj4J
--------------------------------------------------------------------------------

  **Strona internetowa:**  http://trac.osgeo.org/proj4j/
  
  **Licencja:** `Licencja Apache, wersja 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_
  
  **Wersja programu:** 
  
  **Systemy operacyjne:** Windows, Linux, Mac
  
  **Interfejsy API:** Java
  
  **Wsparcie:** http://lists.osgeo.org/mailman/listinfo/proj4j
  
