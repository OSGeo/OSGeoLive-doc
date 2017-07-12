:Author: OSGeo-Live
:Author: Mike Adair
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. (no logo) .. image:: /images/project_logos/logo-GDAL.png
..  :alt: Logo du projet
..  :align: right
..  :target: http://trac.osgeo.org/metacrs/wiki

.. image:: /images/logos/OSGeo_community.png
  :scale: 100 %
  :alt: Projet OSGeo
  :align: right
  :target: http://www.osgeo.org

MetaCRS
================================================================================

Transformations de Systèmes de Référence de coordonnées (CRS)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: /images/project_logos/logo-metacrs.png
  :alt: map projection example
  :align: right
  :target: http://trac.osgeo.org/metacrs/wiki


`Le groupe des projets MetaCRS <http://trac.osgeo.org/metacrs/wiki>`_ fournit 
des bibliothèques de méthodes pour faire des transformations entre différents 
systèmes de coordonnées de référence (CRS). un CRS géographique permet à 
tous les points sur Terre d'être décrits comme un jeu de de coordonnées 
(comme la latitude, la longitude et l'élévation). Différents systèmes sont 
utilisés pour représenter la Terre en trois dimensions sur une carte plate 
en 2 dimensions.

Les bibliothèques MetaCRS sont incluses dans d'autres projets et certains 
sont aussi disponibles via une interface de ligne de commande.

Les sous-projets appartenant à MetaCRS incluent:

* PROJ.4 (C++) - utilisé dans MapServer, GRASS GIS, PostGIS, Mapnik, Thuban, OGDI, TopoCad, OGRCoordinateTransformation et d'autres encore.
* Proj4js (JavaScript) - utilisé dans OpenLayers.
* CS-Map (C++) - utilisé dans MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - site web pour récupérer des définitions de systèmes de coordonneés.

Caractéristiques principales
--------------------------------------------------------------------------------

* fournit la transformation de point d'un système de coordonnées de référence à  
  un autre
* inclut la transformation entre datums
* large nombre de classes de projections supportées


Standards implémentés
--------------------------------------------------------------------------------

Les projets utilisent typiquement les définitions des systèmes de coordonnées 
comme défini par l'\`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ 
et dans le format "Well Known Text" (WKT).

PROJ.4
--------------------------------------------------------------------------------

  **Site web:**  http://trac.osgeo.org/proj/
  
  **Licence:** `licence opensource style X/MIT <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Version du logiciel:** 4.7.0
  
  **Plates-formes supportées:** Windows, Linux, Mac
  
  **Interfaces de l'API:** C, C++, Python, Java, Ruby
  
  **Support:** http://lists.maptools.org/mailman/listinfo/proj

Proj4js
--------------------------------------------------------------------------------

  **Site web:**  http://proj4js.org
  
  **Licence:** `licence opensource style X/MIT <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Version du logiciel:** 1.1.0
  
  **Plates-formes supportées:** Windows, Linux, Mac
  
  **Interfaces de l'API:** JavaScript
  
  **Support:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

CS-Map
--------------------------------------------------------------------------------

  **Site web:**  http://trac.osgeo.org/csmap/
  
  **Licence:** `spécifique <http://svn.osgeo.org/metacrs/csmap/trunk/CsMapDev/license.txt>`_
  
  **Version du logiciel:** 13.0
  
  **Plates-formes supportées:** Windows, Linux, Mac
  
  **Interfaces de l'API:** C, C++

  **Support:** http://lists.osgeo.org/mailman/listinfo/MetaCRS

GeoTIFF/libgeotiff
--------------------------------------------------------------------------------

  **Site web:**  http://trac.osgeo.org/geotiff/
  
  **Licence:** `licence opensource style X/MIT <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Version du logiciel:** 1.4.0
  
  **Support:** http://lists.maptools.org/mailman/listinfo/geotiff
  
Proj4J
--------------------------------------------------------------------------------

  **Site web:**  http://trac.osgeo.org/proj4j/
  
  **Licence:** `licence Apache, Version 2.0 <http://www.apache.org/licenses/LICENSE-2.0>`_
  
  **Version du logiciel:** 
  
  **Plates-formes supportées:** Windows, Linux, Mac
  
  **Interfaces de l'API:** Java
  
  **Support:** http://lists.osgeo.org/mailman/listinfo/proj4j
  
