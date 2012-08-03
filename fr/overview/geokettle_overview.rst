:Author: Thierry Badard 
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-geokettle.png
  :scale: 80 %
  :alt: Logo du projet
  :align: right
  :target: http://www.geokettle.org/

GeoKettle
================================================================================

Extract Transform Load (ETL)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoKettle est une version de `Pentaho Data Integration <http://kettle.pentaho.com>`_ (connu aussi comme Kettle) avec des fonctionnalités spatiales. C'est un ETL (Extract, Transform and Load) puissant, s'appuyant sur les métadonnées spatiales et dédié à l'intégration de différentes sources de données, servant à créer et à mettre à jour des bases de données géospatiales, des silos de données et des services web.

GeoKettle permet l'extraction de données depuis des sources de données, la transformation des données pour pouvoir corriger les erreurs, nettoyer les données, changer la structure de données, rendre les données conformes avec les standards, et charger les données transformée dans un SGBD, un fichier SIG, ou un service web géospatial. GeoKettle est particulièrement utile pour automatiser des traitements complexes et répétitifs sans produire du code spécifique, faire des conversions entre formats de données, migrer des données entre SGBD, alimenter des SGBD en données, etc.

Dans le domaine géospatial, Geokettle doit être comparé à FME, un ETL spatial propriétaire. GeoKettle est stable, rapide, conforme à la norme, avec des centaines de fonctions le support de lecture/écriture pour de nombreux formats de fichier, services et SGBD. GeoKettle est utilisé par diverses organisations autour du monde, dont des agences gouvernementales, des banques, des assurances et des intégrateurs de systèmes géospatiaux.

.. image:: ../../images/screenshots/1024x768/geokettle-overview.png
  :scale: 50 %
  :alt: Capture d'écran GeoKettle
  :align: right

Caractéristiques principales
--------------------------------------------------------------------------------

* Extraction de données depuis: 

  * plus de 35 types de base de données: MySQL, PostgreSQL/PostGIS, Oracle, ...
  * fichiers XML
  * fichiers XLS
  * fichiers Xbase (dBase, Foxpro, etc)
  * informations des systèmes de fichiers
  * données générées
  * fichiers Microsoft Access
  * LDAP
  * système SOLAP (Spatial OLAP): GeoMondrian
  * formats de données géospatiales: Shapefile, GML 3.1.1, KML 2.2, tous les formats supportés par OGR
  * services web OGC: Web Feature Service (WFS), Sensor Observation Service (SOS), Catalogue Web Service (CSW)

* Transformation de données:

  * transfert de données basé sur moteur propre (pas de générateur de code) 
  * tables de correspondance dans les bases de données, les fichiers ou en mémoire
  * calculs
  * scripting: Javascript, SQL, RegExp
  * découpage
  * mapping
  * sélection
  * partitionnement
  * filtrage
  * fusion
  * jointure
  * duplication
  * fonctionnemment en grappe (MPP)
  * transposition
  * analyse de données spatiales: tampon, centroïde, distance, intersection, union, ...
  * géotraitements avancés: découpage, delaunay, simplifier/adoucir les géométries, découpages d'objets, ...
  * agrégation spatiale
  * prévisualisation cartographique

* Chargement de données dans un format cible:

  * chargements de base de données: MySQL, PostgreSQL/PostGIS, Oracle, ...
  * alimentation de silos de données
  * froamts de données géospatiales: Shapefile, GML 3.1.1, KML 2.2, tous les formats supportés par OGR
  * services web OGC: Catalogue Web Service (CSW), ...
  * chargement partitionné
  * chargement en masse
  * chargement parallèle
  * fonctionnement en grappe

* Environnement:
  
  * interface graphique complète nommée "Spoon" pour éditer toutes les options de transformation
  * outils en ligne de commande: pour exécuter des tâches et des transformations
  * serveur web: exécution distante et fonctionnment en grappe parfait pour les environnement
    dans "les nuages" pour le traitement de jeux de données très importants.
  * API de programmation pour Java
  * écosystème de plugins

Standards Implémentés
--------------------------------------------------------------------------------

* conforme aux standards OGC (SFS, CSW, SOS)

Détails
--------------------------------------------------------------------------------

**Site web:** http://www.geokettle.org/

**Licence:** License GNU Lesser General Public (LGPL) version 2.1

**Version du logiciel:** 2.0

**Plates-formes supportées:** Windows, Linux, Mac, Solaris

**Interfaces de l'API:** Java, Javascript

**Support:** http://www.spatialytics.org & http://www.spatialytics.com


Guide de démarrage rapide
--------------------------------------------------------------------------------
    
* :doc:`Documentation du guide de démarrage rapide <../quickstart/geokettle_quickstart>`
