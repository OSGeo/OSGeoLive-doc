:Author: OSGeo-Live
:Author: Mike Adair
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live7.9
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

Transformation von verschiedenen Koordinatensystemen
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/project_logos/logo-metacrs.png
  :alt: Beispiel Kartenprojektion
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki


Das `Projekt MetaCRS <http://trac.osgeo.org/metacrs/wiki>`_ stellt Bibliotheken und Methoden zur Transformation 
zwischen verschiedenen Koordinatensystem zur Verfügung.
Ein Koordinatensystem ordnet jedem Punkt auf der Erde einen Koordinatenwert 
zu, bestehend auf Hoch- und Rechtswert sowie einer Höhe.
Zur Repräsentation der dreidimensionalen Erde auf einer flachen, zweidimensionalen Karte kommen verschiedene Koordinatensysteme zum Einsatz.

Die MetaCRS-Bibliotheken sind in vielen anderen Projekten enthalten und teilweise auch über die Kommandozeile verfügbar.

Folgende Unterprojekte sind Bestandteil von MetaCRS:

* PROJ.4 (C++) - benutzt in :doc:`MapServer <mapserver_overview>`, :doc:`GRASS GIS <grass_overview>`, :doc:`PostGIS <postgis_overview>`, :doc:`Mapnik <mapnik_overview>`, Thuban, OGDI, TopoCad, OGRCoordinateTransformation und vielen anderen.
* Proj4js (JavaScript) - benutzt in :doc:`OpenLayers <openlayers_overview>`.
* CS-Map (C++) - benutzt in MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - Webseite zum abfragen von Koordinatensystemen-Definitionen.

Kernfunktionen
--------------------------------------------------------------------------------

* Punkttransformation von und in verschiedene Koordinatensysteme.
* beinhaltet die Datumstransformation.
* eine Vielzahl von Projektionklassen wird unterstützt.


Implementierte Standards
--------------------------------------------------------------------------------

In diesem Projekt werden die Definitionen der Koordinatensystem der 
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ verwendet und liegen
im Format Well Known Text (WKT) vor.

PROJ.4
--------------------------------------------------------------------------------

  **Webseite:**  http://trac.osgeo.org/proj/
  
  **Lizenz:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Software Version:** 4.8.0
  
  **Unterstützte Plattformen:** Windows, Linux, Mac
  
  **API Schnittstellen:** C, C++, Python, Java, Ruby
  
  **Support:** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
--------------------------------------------------------------------------------

  **Webseite:**  http://proj4js.org
  
  **Lizenz:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Unterstützte Plattformen:** Windows, Linux, Mac
  
  **API Schnittstellen:** JavaScript
  
  **Support:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **Webseite:** http://trac.osgeo.org/csmap/
  
  **Lizenz:** `custom <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_
  
  **Software Version:** 13.0
  
  **Unterstützte Plattformen:** Windows, Linux, Mac
  
  **API Schnittstellen:** C, C++

  **Support:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **Webseite:**  http://trac.osgeo.org/geotiff/
  
  **Lizenz:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Software Version:** 1.4.0
  
  **Support:** http://lists.maptools.org/mailman/listinfo/geotiff
  
Proj4J
--------------------------------------------------------------------------------

  **Webseite:**  http://trac.osgeo.org/proj4j/
  
  **Lizenz:** `Apache License, Version 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_ 
  
  **Unterstützte Plattformen:** Windows, Linux, Mac
  
  **API Schnittstellen:** Java
  
  **Support:** http://lists.osgeo.org/mailman/listinfo/proj4j
  
