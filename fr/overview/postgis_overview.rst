.. Writing Tip:
  Writing tips describe what content should be in the following section.
  The postgis_overview.rst document is used as a reference example
  for other overviews.
  All other overviews should remove the writing tips in order to make the
  overview documents easier to translate.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo-Live
:Author: Barry Rowlingson
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)


.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. Writing Tip:
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    ../../images/project_logos/<filename>

.. image:: ../../images/project_logos/logo-PostGIS.png
  :scale: 30 %
  :alt: Logo du projet
  :align: right
  :target: http://postgis.refractions.net/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: Projet OSGeo
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

PostGIS
================================================================================

.. Writing Tip:
  Application Category Description:

Base de données spatiale
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.
  * First sentence should explain the application.
  * Usually the application domain will not be familiar to readers. So the
    next line or two should explain the domain. Eg: For GeoKettle, the next
    line or two should explain what GoeSpatial Business Intelligence is.
  * Remaining paragraph or 2 in this overview section should provide a
    wider description and advantages from a user perspective.

PostGIS rend spatiale la base de données relationnelle populaire PostgreSQL, lui permettant d'être utilisée comme une base de données de stockage pour les Systèmes d'Information Géographique (SIG) et pour les applications de cartographie en ligne de la même manière qu'Oracle Spatial le fait sur la base de données Oracle.

PostGIS est stable, rapide, conforme aux standards, avec des centaines de fonctions spatiales et est actuellement la base de données spatiale opensource la plus utilisée actuellement. PostGIS est utilisée par diverses organisations autour du monde, incluant des agences gouvernementales gérant des données à caractère sensible et des organisations stockant des térabytes de données servant des millions de requêtes par jour.

L'administration de base de données est disponible pour le bureau et le web avec 
pgAdmin, phpPgAdmin, et d'autres. L'import/export de données peut être fait par 
des outils en ligne de  commande (shp2pgsql, pgsql2shp, ogr2ogr, dxf2postgis) ou
depuis des clients SIG bureautiques et web. Ces clients peuvent aussi 
cartographier et manipuler les tables des bases de données spatiales PostGIS.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: ../../images/screenshots/800x600/pgadmin.gif
  :scale: 55 %
  :alt: Gestionnaire de base de données pgAdmin
  :align: right

Caractéristiques principales
--------------------------------------------------------------------------------

* Centaines de fonctions spatiales
* Tampons, unions, recouvrements, distance et plus
* Intégrité transactionnel ACID
* Index spatial R-Tree
* Support multiutilisateurs
* Verrouillage à la ligne
* Réplication
* Partitionnement
* Sécurité basée sur les rôles
* Espaces de table, schémas

Standards implémentés
--------------------------------------------------------------------------------

.. Writing Tip: List OGC or related standards supported.

* Conforme au standard OGC SFSQL

Détails
--------------------------------------------------------------------------------

**Site web:** http://postgis.refractions.net/

**Licence:** Licence GNU General Public (GPL) version 2

**Version du logiciel:** 1.5

**Plates-formes supportées:** Windows, Linux, Mac

**Interface de l'API:** SQL

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**Support:** http://www.osgeo.org/search_profile


Guide de démarrage rapide
--------------------------------------------------------------------------------
    
* :doc:`Documentation du guide de démarrage rapide <../quickstart/postgis_quickstart>`
