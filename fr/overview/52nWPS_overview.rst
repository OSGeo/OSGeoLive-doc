:Author: Bastian Schaeffer, Kristof Lange, Benjamin Pross
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo_52North_160.png
  :alt: Logo du projet
  :align: right
  :target: http://52north.org/wps


52°North WPS
================================================================================

Service Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

52°North :doc:`Web Processing Service (WPS) <../standards/wps_overview>` permet 
l'accès via Internet à des algorithmes de traitement géospatial fournis par 
Sextante, ArcGIS Server, R, GRASS 7, ou par des fonctions avec des développements 
personnalisés. Les algorithmes peuvent être aussi simples que déterminer la 
différence dans les cas de grippe entre deux saisons ou aussi compliqués qu'un 
modèle du changement climatique mondial.

.. image:: /images/screenshots/800x600/52nWPS_test_client.png
  :scale: 50 %
  :alt: Capture d'écran du client de test
  :align: right

Caractéristiques principales
--------------------------------------------------------------------------------

Fonctions SIG de base:

* SimpleBufferAlgorithm
* DouglasPeuckerAlgorithm
* IntersectionAlgorithm
* AddRasterValuesAlgorithm
* CoordinateTransformAlgorithm
	
Algorithmes principaux disponibles à travers:

* Sextante
* ArcGIS Server
* R
* GRASS 7

Formats d'entrée et de sortie pris en charge:

* Données vectorielles: GML2, GML3, SHP files, KML, WKT (Well-known Text), DGN
* Données raster: Geotiff, AsciiGrid, NetCDF, JPEG, PNG, HDF-EOS, ERDAS HFA

Un client basé sur un navigateur web

Standards implémentés
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Détails
--------------------------------------------------------------------------------

**Site Web:** http://52north.org/wps

**License:** GPL

**Version du logiciel:** WPS |version-52nWPS|

**Plates-formes supportées:** Windows, Linux, Mac

**Support commercial:** http://www.52north.org


Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/52nWPS_quickstart>`


