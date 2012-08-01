:Author: OSGeo-Live
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-TinyOWS.png
  :scale: 100 %
  :alt: Logo du projet
  :align: right
  :target: http://mapserver.org/trunk/tinyows/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: Projet OSGeo
  :align: right
  :target: http://www.osgeo.org

TinyOWS
================================================================================

Serveur WFS (Web Feature Service)
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

TinyOWS est un serveur haute performance, de WFS/WFS-T (Transactional Web Feature Service) qui est très léger et facile à déployer, utilisant une interface CGI ou FastCGI et reposant sur :doc:`PostGIS <postgis_overview>` pour le stockage de données.

.. image:: ../../images/screenshots/800x600/tinyows_digitizing.jpg
  :scale: 55 %
  :alt: Digitalisation
  :align: right

TinyOWS est généralement utilisé en conjonction avec :doc:`MapServer <mapserver_overview>` pour fournir le support du WFS-T et des services WFS rapides pour les clients :doc:`QGIS <qgis_overview>` et/ou :doc:`OpenLayers <openlayers_overview>`. Il est utilisé en production dans des organisations partout dans le monde, dont des agences gouvernementales à caractères sensibles.
TinyOWS implémente strictement les standards WFS 1.0 et 1.1, et a passé tous les tests unitaires OGC CITE (~ 1000 tests unitaires).

Caractéristiques principales
--------------------------------------------------------------------------------

* Web Feature Service Transactionnel (WFS-T)
* Interface CGI et FastCGI
* Connexion aux données PostGIS
* Sortie en GML 2.1.2, 3.1.1 et GeoJson 1.0
* Configuré en utilisant le fichier de configuration de MapServer, permettant d'avoir un seul fichier de configuration pour les deux applications.

Standards implémentés
--------------------------------------------------------------------------------
* WFS 1.0 et WFS 1.1: Profils basique et transactionnel
* FE 1.0.0 et FE 1.1.0
* GML 2.1.2 et 3.1.1 Simple Profile (SF-0)

Détails
--------------------------------------------------------------------------------

**Site web:** http://mapserver.org/trunk/tinyows/

**Licence:** MIT

**Version du logiciel:** 1.0.0

**Plates-formes supportées:** Linux, Unix, Mac, Windows

**Interfaces de l'API:** CGI/FastCGI

**Support:** http://lists.osgeo.org/mailman/listinfo/mapserver-users


Guide de démarrage rapide
--------------------------------------------------------------------------------
    
* :doc:`Documentation du guide de démarrage rapide <../quickstart/tinyows_quickstart>`

