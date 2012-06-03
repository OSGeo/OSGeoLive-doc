:Author: OSGeo-Live
:Author: Mike Adair
:Translator: Assumpció Termens
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. (no logo) .. image:: ../../images/project_logos/logo-GDAL.png
..  :scale: 60 %
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

Transformacions de Sistemes de Referència de Coordenades 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/project_logos/logo-metacrs.png
  :scale: 100 %
  :alt: exemple de projecció cartogràfica
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki


`El grup de projectes MetaCRS <http://trac.osgeo.org/metacrs/wiki>`_ proporciona 
llibreries amb mètodes de transformació entre diferents sistemes de referència 
de coordenades. Un sistema de referència de coordenades geogràfic permet que 
tots els punts terrestres puguin ser definits com un conjunt de coordenades
(tal com latitud, longitud i alçada). Existeixen diferents sistemes de coordenades
per a representar la Terra tridimensional sobre un pla o mapa bidimensional.

Les llibreries MetaCRS estan incloses dins d'altres projectes i algunes estan
també disponibles via interfície de comandes.

Els subprojectes que composen MetaCRS inclouen:

* PROJ.4 (C++) - usat en MapServer, GRASS GIS, PostGIS, Mapnik, Thuban, OGDI, TopoCad, OGRCoordinateTransformation i altres.
* Proj4js (JavaScript) - usat en OpenLayers.
* CS-Map (C++) - usat en MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - lloc web on es pot obtenir les definicions de sistemes de coordenades.

Característiques principals
--------------------------------------------------------------------------------

* Proporciona transfomacions de punts des d'un sistema de referència de coordenades a un altre.
* Inclou transformacions entre datums.
* Pot treballar amb un gran nombre de projeccions cartogràfiques.


Estàndards implementats
--------------------------------------------------------------------------------

El projecte utilitza normalment les definicions de sistema de coordenades segons 
el `European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ i 
estan expressades en format Well Known Text (WKT).

PROJ.4
--------------------------------------------------------------------------------

  **Lloc web:**  http://trac.osgeo.org/proj/
  
  **Llicència:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Versió de programari:** 4.7.0
  
  **Plataformes compatibles:** Windows, Linux, Mac
  
  **Interfícies API:** C, C++, Python, Java, Ruby
  
  **Suport:** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
--------------------------------------------------------------------------------

  **Lloc web:**  http://proj4js.org
  
  **Llicència:** `LPGL <http://www.gnu.org/copyleft/lesser.html>`_
  
  **Versió de programari:** 1.0.1
  
  **Plataformes compatibles:** Windows, Linux, Mac
  
  **Interfícies API:** JavaScript
  
  **Suport:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **Lloc web:**  http://proj4js.org
  
  **Llicència:** `custom <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_
  
  **Versió de programari:** 13.0
  
  **Plataformes compatibles:** Windows, Linux, Mac
  
  **Interfícies API:** C, C++

  **Suport:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **Lloc web:**  http://trac.osgeo.org/geotiff/
  
  **Llicència:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Versió de programari:** 1.3.0
  
  **Suport:** http://lists.maptools.org/mailman/listinfo/geotiff
  
Proj4J
--------------------------------------------------------------------------------

  **Lloc web:**  http://trac.osgeo.org/proj4j/
  
  **Llicència:** `Apache License, Version 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_
  
  **Versió de programari:** 
  
  **Plataformes compatibles:** Windows, Linux, Mac
  
  **Interfícies API:** Java
  
  **Suport:** http://lists.osgeo.org/mailman/listinfo/proj4j
  
