:Author: OSGeo-Live
:Author: Mike Adair, Julien Moquet
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. (no logo) .. image:: ../../images/project_logos/logo-proj4.png
..  :alt: project logo
..  :align: right
..  :target: http://proj4.org/index.html

.. image:: ../../images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

Proj.4
================================================================================

Proj4 est une librairie qui fournit des outils pour transformer des points
entre différents systèmes de coordonnées de référence. Un système de coordonnées géographique de référence permet de décrire tous les points de la Terre sous la forme d'un ensemble de coordonnées (comme la latitude, la longitude et l'élévation). Différents systèmes sont utilisés pour représenter les 3 dimensions de la Terre sur une carte plate de 2 dimensions.

Proj4 est écrit en C. Il est utilisé dans :doc:`MapServer <mapserver_overview>`, :doc:`GRASS GIS <grass_overview>`, :doc:`PostGIS <postgis_overview>`, :doc:`Mapnik <mapnik_overview>`, Thuban, OGDI, TopoCad, OGRCoordinateTransformation et bien d'autres. 
 
Proj4 a été traduit du C dans un grand nombre d'autres languages (Voir `The group of Proj4 projects (MetaCRS) <http://trac.osgeo.org/metacrs/wiki>`_). Certaines de ces traductions sont utilisables via l'interface en ligne de commande.
Ces outils incluent 
* Proj4js (JavaScript) - utilisé dans :doc:`OpenLayers <openlayers_overview>`.
* CS-Map (C++) - utilisé dans MapGuide.
* GeoTIFF/libgeotiff (C++).
* Proj4J (Java).
* `SpatialReference.org <http://spatialreference.org/>`_  - site web de références des définitions de systèmes de coordonnées (obsolete).

Principales fonctionnalités de Proj.4
--------------------------------------------------------------------------------

* Fournit la transformation d'un point d'un système de coordonnées de référence à un autre.
* Inclus la transformation entre références (datum).
* Un grand nombre de classes de projection supportées.


Standards implémentés
--------------------------------------------------------------------------------

Le projet utilise généralement les définitions de système de coordonnées définies par le 
`European Petroleum Survey Group (EPSG) <http://www.epsg.org/>`_ au format WKT (Well Known Text).


Details
--------------------------------------------------------------------------------

  **Site web:**  http://proj4.org/
  
  **Licence:** `X/MIT style Open Source license <http://trac.osgeo.org/proj/wiki/WikiStart#License>`_
  
  **Version logiciel:** 4.9.2 (stable)
  
  **Plateformes supportées:** Windows, Linux, Mac
  
  **Interfaces d'API:** C, C++, Python, Java, Ruby
  
  **Support:** http://lists.maptools.org/mailman/listinfo/proj

Démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Démarrage rapide <../quickstart/proj4_quickstart>`

