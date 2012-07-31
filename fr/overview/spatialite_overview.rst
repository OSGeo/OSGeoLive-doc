:Author: Pirmin Kalberer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-spatialite.png
  :scale: 50 %
  :alt: Logo du projet
  :align: right
  :target: http://www.gaia-gis.it/spatialite/


SpatiaLite
================================================================================

Base de données spatiale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

SpatiaLite est un moteur de base de données SQLite_ avec des fonctions spatiales intégrées en plus. 

SQLite est un SGBD populaire, simple, robuste, facile à utiliser et vraiment très léger. Chaque base de données SQLite est simplement un fichier; vous pouvez librement la copier, la compresser, l'envoyer sur un LAN ou sur le WEB sans aucun problème du tout.

Les fichiers sont aussi portables; le même fichier de base de données fonctionnera sous Windows, Linux, MacOs, etc...

.. _SQLite: http://www.sqlite.org/

.. image:: ../../images/screenshots/1024x768/spatialite.jpg
  :scale: 50 %
  :alt: Capture d'écran Spatialite
  :align: right

Caractéristiques principales
--------------------------------------------------------------------------------

L'extension SpatiaLite permet à SQLite de supporter les données spatiales en se conformant aux spécifications de l'OGC.

* Support des formats standards WKT et WKB
* Implémente des fonctions spatiales SQL comme AsText(), GeomFromText(), Area(), PointN() et similaires
* L'ensemble des fonctions OpenGis est supporté via GEOS, cela comprend des fonctions d'analyse spatiale sophistiquées comme Overlaps(), Touches(), Union(), Buffer() ..
* Support complet des métadonnées spatiales avec les spécifications OpenGis
* Support de notations alternatives pour les géométries - EWKT, GML, KML et GeoJSON
* Support de l'import et l'export des shapefiles
* Support de la reprojection de coordonnées via PROJ.4 et jeux de paramètres géodésiques de l'EPSG
* Support des jeux de caractères locaux via GNU libiconv
* Implémente un véritable index spatial basé sur l'extension RTree SQLite
* L'extension VirtualShape permet à SQLite d'accéder aux fichiers shape comme des tables virtuelles
* Vous pouvez faire des requêtes SQL standard sur des shapefiles externes, sans avoir besoin de les importer ou de les convertir
* L'extension VirtualText permet à SQLite d'accéder aux fichiers CSV/TSV comme des tables virtuelles 
* L'extension VirtualXL permet à SQLite d'accéder aux tables de fichiers xls comme des tables virtuelles 
* Vous pouvez faire des requêtes SQL standard sur des fichiers externes CSV/TSV ou des tables Excel, sans avoir besoin de les importer ou de les convertir
* L'outil graphique supporte l'ensemble de ces éléments, d'une manière agréable pour l'utilisateur


Détails
--------------------------------------------------------------------------------

**Site web:** http://www.gaia-gis.it/gaia-sins/

**Licence:** MPL v1.1 et GPL v3

**Version du logiciel:** spatialite 3.1.0a / librasterlite 1.1 / spatialite-gui 1.5.0 / spatialite-gis 1.0.0

**Plates-formes supportées:** Linux, Mac, Windows

**Interface API:** C


Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/spatialite_quickstart>`

