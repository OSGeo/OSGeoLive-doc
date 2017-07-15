:Author: Trevor Wekel
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live5.5draft
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-MapGuideOS.png
  :alt: Logo du projet
  :align: right
  :target: http://mapguide.osgeo.org/

.. image:: /images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: Projet OSGeo
  :align: right
  :target: http://www.osgeo.org


MapGuide Open Source
================================================================================

Service web
--------------------------------------------------------------------------------

`MapGuide Open Source <http://mapguide.osgeo.org/>`_ est une plate-forme basé sur le web qui permet aux utilisateurs de développer et déployer des applications de cartographie en ligne et des services web géospatiaux. MapGuide fait apparaître un visualisateur interactif qui inclut le support pour la sélection d'objets, l'inspection des propriétés, les informations aux survol carte, et des opérations comme les tampons, les sélections géographiques et la mesure de distance.

MapGuide inclut une base de données XML pour gérer le contenu. Maestro permet aux utilisateurs d'éditer la base de données XML et de construire un site web sans une seule ligne de code. MapGuide supporte aussi les formats de fichiers géospatiaux les plus utilisés, les bases de données et les standards.

MapGuide peut être déployé sur Linux ou Windows, supporte les serveurs web Apache et IIS, et offre des API étendues pour PHP, .NET, Java et JavaScript pour le développement des application. MapGuide Open Source est sous licence LGPL.

.. image:: /images/screenshots/1024x768/mapguide_viewer.png
  :scale: 50%
  :alt: Capture d'écran MapGuide
  :align: right

.. note:: Due to space constraints on the DVD, MapGuide is currently
  not installed.

.. commented out as manual install doesn't currently work: To install
  it open up a terminal and run ``cd gisvm/bin; sudo ./install_mapguide.sh``

Caractéristiques principales
--------------------------------------------------------------------------------

**Visualisateur de carte interactif**

* visualisateur dynamique dans le navigateur web 
* sélection d'objets et propriétés 
* tampons, interrogation 
* impression et dessin de graphiques

**Sortie cartographique de qualité**

* détails en fonction de l'échelle
* stylage thématiques gérés par des règles
* rendu d'image avec anti-crênelage
* support des couleurs 32bits (True color) 

**Base de données des ressources intégrée pour une gestion facilitée**

* stockage hiérarchique des documents de ressources XML qui définisssent les cartes, les couches et les connexions aux données
* définition des sources de données et des couches une seule fois puis utilisation dans des cartes multiples
* modèle de sécurité basé sur les accès avec des permissions héritables

**Accès aux données de manière uniforme**

* utilisation exclusive de l'API FDO (Feature Data Objects) pour les données vecteur et raster
* fournit la manière standardisé d'accéder a une variété de sources de données incluant SHP, SDF, Oracle, MySQL, et PostGIS.

**Développement d'application flexible**

* développement des applications en PHP, .NET, ou Java

**APIs étendues côté serveur**

* créé, interrroge, lit et écrit des documents de ressouces XML permanents et en session
* interroge et met à jour les données des objets géographiques
* permet la reprojection de coordonnées
* créé, manipule, et analyse les géométries
* manipule l'exécution du rendu des cartes et des couches

**Plate-forme rapide, scalable et sécurisé**

* fonctionnement multi-thread et fonctionnement supportant les avantages des serveurs multi-coeurs
* répartition de charges entre serveurs
* connection commune aux bases de données 
* mise en cache des tuiles intégées

**Support de plates-formes multiples**

* déploiement sur Microsoft Windows ou Linux
* mise à disposition des applications avec Apache ou Microsoft IIS
* fonctionne avec les navigateurs Microsoft Internet Explorer, Mozilla Firefox, Safari et Chrome

Standards implémentés
--------------------------------------------------------------------------------

* OGC Web Map Service 1.1.1 

Détails
--------------------------------------------------------------------------------

**Site web:** http://mapguide.osgeo.org/

**Licence:** Licence GNU Lesser General Public (LGPL) 

**Version du logiciel:** 2.4.0 Pre-Release

**Plates-formes supportées:** Linux, Windows

**Support commercial:** http://www.osgeo.org/search_profile


Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/mapguide_quickstart>`


