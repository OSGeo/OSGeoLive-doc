:Author: Johannes Wilden
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-deegree.png
  :scale: 80 %
  :alt: Logo du projet
  :align: right
  :target: http://deegree.org

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100
  :alt: Projet OSGeo
  :align: right
  :target: http://www.osgeo.org


Deegree
================================================================================

Services web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Deegree est libre, stable, puissant et facile à utiliser. Deegree est l'ensemble 
le plus complet d'implémentations des standards de l'Open Geospatial
Consortium (OGC) dans les logiciels libres et opensource, allant du WFS 
transactionnel à l'affichage de données 3D via Web Terrain Service et plus!

Deegree est une solution pour les Systèmes d'Information Géographique (SIG) web 
et bureautique et les Infrastructures de Données Spatiales (IDS).
Il est composé d'une API (Application Programming Interface) Java puissante et 
complète  (API) et d'un ORM (Object-Relational Mapping) puissant pour des schémas 
spatiaux simplee comme complexes. Deegree fournit aussi un ensemble de webservices 
conformes en particulier avec les standards WMS, WFS, CSW, SOS et WPS.

Deegree rend votre IDS prête et fonctionnelle en utilisant vos propres données et 
en répondant à vos exigences.


.. image:: ../../images/screenshots/1024x768/deegree_mainpage.jpg
  :scale: 50%
  :alt: Capture d'écran
  :align: right

Quelques exemples de fonctionnalités
--------------------------------------------------------------------------------

* Web Map Service (WMS)

  * très flexible sur le contenu des couches
  * support et utilisation de définitions de style (SLD 1.0)
  * capacités à réaliser des analyses thématiques avec des graphiques (diagrammes circulaires, histogrammes, diagrammes en courbe) comme symboles ponctuels
  * source de données: tous les services web les plus courants de l'OGC (WMS, WFS, WCS), PostgreSQL/PostGIS, Oracle Spatial, n'importe quelle requête SQL peut être utilisée pour créer le contenu de la couche WMS
  * très stable, même sur des grandes échelles
  * support de requêtes HTTP GET, POST et des requêtes d'information sur les objets
  * certifié conforme à la norme OGC

* Web Feature Service (WFS)

  * support d'objets simples et complexes
  * transformation à la volée de coordonnées pour plus de 3000 systèmes de coordonnées de référence
  * support de formats de sortie flexible
  * facilement amélioré pour se conformer à la directive INSPIRE

* Web Coverage Service (WCS)

  * support des requêtes HTTP GET et POST
  * source de données: images (tif, png, jpeg, gif, bmp), fichiers GeoTIFF, ECW et Oracle GeoRaster
  * acès rapide à des couvertures larges

* Catalogue Service (CSW)

  * source de données: bases de données PostgreSQL, Oracle
  * requêtes supportées: GetCapabilities, DescribeRecord, GetRecordById, GetRecords, Transaction - Insert, Update, Delete, Harvesting

* Service d'impression de carte en ligne

  * supporte différents formats d'impression (HTML, PDF, PNG)
  * gestion de tâches de longue durée
  * support de requêtes asynchrones pour permettre des actions à grande échelle
  * requêtes stockées dans une base de données et restant disponibles même en cas d'arrêt du service WMPS ou de défaillance de la machine

* Web Perspective View Service (WPVS)

   * source de données: WMS distant/local, WFS distant/local, WCS local, Postgres/PostGIS, Oracle Spatial
   * modèles d'élevation pouvant être des données vecteur ou raster
   * requêtes: Get3DFeatureInfo, GetView


Standards implémentés
--------------------------------------------------------------------------------

* OGC Web Map Service (WMS) 1.1.0*, 1.1.1, 1.3.0*
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 (2.0 en cours)
* OGC Web Coverage Service (WCS) 1.0.0* (1.1.0 en cours)
* OGC Catalogue Service-Web (CSW) 2.0.0, 2.0.1, 2.0.2; inclusion des profils OGC ISOAP 1.0 et INSPIRE
* OGC Web Perspective View Service (WPVS) Draft 6
* OGC Web Coordinate Transformation Service (WCTS) 0.4.0
* OGC Web Processing Service (WPS) 0.4.0, 1.0.0
* OGC Sensor Observation Service (SOS) 1.0.0

Détails
--------------------------------------------------------------------------------

**Site web:** http://deegree.org

**Licence:** LGPL

**Version du logiciel:** 3.2-pre3

**Plates-formes supportées:** Windows, Linux

**Interface de l'API:** Java

**Support:** http://wiki.deegree.org/deegreeWiki/GettingSupport


Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/deegree_quickstart>`
