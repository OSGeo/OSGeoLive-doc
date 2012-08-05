:Author: OSGeo-Live
:Author: Mike Adair
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

Coordinate Reference System Transformations
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/project_logos/logo-metacrs.png
  :scale: 100 %
  :alt: map projection example
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki


`Il gruppo dei progetti MetaCRS <http://trac.osgeo.org/metacrs/wiki>`_ fornisce
librarie di metodi per effettuare trasformazioni tra i differenti sistemi di riferimento
cartografici. Un sistema di riferimento cartografico permette di descrivere tutti i 
punti sul glodo terreste come un set di coordinate (come latitudine, longitudine e
elevazione). Differenti sistemi sono usati per rappresentare la terra tridimensionale
su un piano, una mappa bidimensionale.

Le librerie MetaCRS sono incluse in altri progetti sono anche disponibili tremite
un'interfaccia da linea di comando.

I sotto-progetti che compongono MetaCRS includono:

* PROJ.4 (C++) - usato in MapServer, GRASS GIS, PostGIS, Mapnik, Thuban, OGDI, TopoCad, OGRCoordinateTransformation e molti altri.
* Proj4js (JavaScript) - usato in OpenLayers.
* CS-Map (C++) - usato in MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - Sito web per recuperare le definizioni di sistemi di coordinate.

Caratteristiche Principali
--------------------------------------------------------------------------------

* Fornisce i punti di trasformazione da un sistema di coordinate ad un altro.
* Include transformazioni tra datum.
* Un vasto numero di classi di proiezioni sono supportate.


Implemented Standards
--------------------------------------------------------------------------------

I progetti solitamente utilizzano le definizioni di sistema di coordinate come specificate dalla
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ e descritte nel
formato Well Known Text (WKT).

PROJ.4
--------------------------------------------------------------------------------

  **Sito Web:**  http://trac.osgeo.org/proj/
  
  **Licenza:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Versione Software:** 4.7.0
  
  **Piattaforme Supportate:** Windows, Linux, Mac
  
  **Interfacce API:** C, C++, Python, Java, Ruby
  
  **Supporto:** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
--------------------------------------------------------------------------------

  **Sito Web:**  http://proj4js.org
  
  **Licenza:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Versione Software:** 1.1.0
  
  **Piattaforme Supportate:** Windows, Linux, Mac
  
  **Interfacce API:** JavaScript
  
  **Supporto:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **Sito Web:**  http://trac.osgeo.org/csmap/
  
  **Licenza:** `custom <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_
  
  **Versione Software:** 13.0
  
  **Piattaforme Supportate:** Windows, Linux, Mac
  
  **Interfacce API:** C, C++

  **Supporto:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **Sito Web:**  http://trac.osgeo.org/geotiff/
  
  **Licenza:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Versione Software:** 1.4.0
  
  **Supporto:** http://lists.maptools.org/mailman/listinfo/geotiff
  
Proj4J
--------------------------------------------------------------------------------

  **Sito Web:**  http://trac.osgeo.org/proj4j/
  
  **Licenza:** `Apache License, Version 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_
  
  **Versione Software:** 
  
  **Piattaforme Supportate:** Windows, Linux, Mac
  
  **Interfacce API:** Java
  
  **Supporto:** http://lists.osgeo.org/mailman/listinfo/proj4j
  
