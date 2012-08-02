:Author: Bastian Schaeffer, Kristof Lange, Benjamin Pross
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: Logo du projet
  :align: right
  :target: http://52north.org/wps


52°North WPS
================================================================================

Service Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Le 52°North :doc:`Web Processing Service (WPS) <../standards/wps_overview>` permet l'accès à Internet à des algorithmes de traitement géospatial fournies par Sextane, ArcGIS Server, R, GRASS 7, ou par des fonctions développées personnalisées. Les algorithmes peuvent être aussi simples que de déterminer la différence dans les cas de grippe entre deux saisons ou aussi compliqués qu'un modèle du changement climatique mondial.

.. image:: ../../images/screenshots/1024x768/52n_test_client.png
  :scale: 50 %
  :alt: Capture d'écran du client de test
  :align: right

Caractéristiques de base
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
* Données matricielles: Geotiff, AsciiGrid, NetCDF, JPEG, PNG, HDF-EOS, ERDAS HFA

Un navigateur basé client

Normes implémentées
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Détails
--------------------------------------------------------------------------------

**Site Web:** http://52north.org/wps

**License:** GPL

**Version du logiciel:** WPS 3.0

**Plates-formes supportées:** Windows, Linux, Mac

**Support commercial:** http://www.52north.org


Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/52nWPS_quickstart>`


