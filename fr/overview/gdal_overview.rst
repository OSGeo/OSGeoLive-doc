:Author: OSGeo-Live
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-GDAL.png
  :alt: Logo du projet
  :align: right
  :target: http://gdal.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: Projet OSGeo
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GDAL/OGR
================================================================================

Outils de transformation de données géospatiales
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Geospatial Data Abstraction Library (GDAL/OGR) fournit des utilitaires en ligne 
de commande pour transformer et traiter un large éventail de formats de données 
géospatiales raster et vecteur.

Les utilitaires sont basées sur une bibliothèque en C++, multi plates-formes, accessible
par de nombreux langages de programmation.  Comme une bibliothèque, elle s'appuie sur 
un seul modèle de données pour les applications qui se connectent dessus pour tous 
les formats supportés.

GDAL/OGR est la bibliothèque la plus utilisée pour l'accès aux données spatiales. Il 
fournit le moteur d'accès principal aux données pour de nombreuses applications 
dont MapServer, GRASS, QGIS, et OpenEV. Elle est aussi utilisé par des logiciels comme 
OSSIM, Cadcorp SIS, FME, Google Earth, VTP, Thuban, ILWIS, MapGuide et ArcGIS.

.. image:: /images/screenshots/1024x768/gdal_ogr_proj_overview.png
  :scale: 60 %
  :alt: GDAL supporte de nombreux formats de données géographiques
  :align: right

Caractéristiques principales
--------------------------------------------------------------------------------

* Utilitaires en ligne de commande pour la transformation de données, la déformation d'images, leur extraction et de nombreuses autres tâches courantes
* Accès aux données raster très performant, prenant avantage du tuilage et de mécanisme de prévisualisation
* Support pour les fichiers de grande taille - supérieurs à 4GB
* Bibliothèque d'accès à partir de Python, Java, C#, Ruby, VB6 et Perl
* Moteur de gestion des systèmes de coordonnées s'appuyant sur PROJ.4 et les descriptions de coordonnées système OGC Well Known Text (WKT)

Formats populaires pris en charge
--------------------------------------------------------------------------------

GDAL supporte plus de 50 formats raster, et plus de 20 types de format vecteur.

Cela inclut:

* **Raster:** GeoTIFF, Erdas Imagine, SDTS, ESRI Grids, ECW, MrSID, JPEG2000, DTED, et plus encore ...
* **Vecteur:** MapInfo (tab et mid/mif), Shapefile ESRI, couvertures ESRI, Geodatabase Personnelle ESRI , DGN, GML, PostGIS, Oracle Spatial, et plus encore ...

Standards implémentés
--------------------------------------------------------------------------------

Le modèle de données vecteur d'OGR est conforme avec la spécification OGC Simple Features.

Détails
--------------------------------------------------------------------------------

**Site web:**  http://www.gdal.org

**Licence:** `license opensource style X/MIT <http://trac.osgeo.org/gdal/wiki/FAQGeneral#WhatlicensedoesGDALOGRuse>`_

**Version du logiciel:** |version-gdal|

**Plates-formes supportées:** Windows, Linux, Mac

**Interfaces de l'API:** C, C++, Python, Java, C#, Ruby, VB6 et Perl

**Support:** http://lists.osgeo.org/mailman/listinfo/gdal-dev, http://www.osgeo.org/search_profile

Guide de démarrage rapide
--------------------------------------------------------------------------------
    
* :doc:`Documentation de démarrage rapide <../quickstart/gdal_quickstart>`
