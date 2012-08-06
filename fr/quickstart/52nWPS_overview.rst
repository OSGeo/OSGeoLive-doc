:Author: Bastian Schaeffer, Kristof Lange, Benjamin Pross
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo_52North_160.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://52north.org/wps


52°North WPS
================================================================================

Service Web
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Le 52°North :doc:`Web Processing Service (WPS) <../standards/wps_overview>` permet un accès web aux algorithmes des processus géospatiaux
fournis par Sextane, ArcGIS Server, R, GRASS 7, ou des fonctions spécifiques développées. Les algorithmes peuvent être aussi simple que déterminer la différence des cas d'influence entre deux saisons différentes, ou aussi compliqués qu'un modèle de changement climatique global.

.. image:: ../../images/screenshots/1024x768/52n_test_client.png
  :scale: 50 %
  :alt: screenshot
  :align: right

Eléments centraux
--------------------------------------------------------------------------------

Fonctions centrales de :

* Algorithme simple d'espaces tampons
* Algorithme de Douglas Peucker
* Algorithme d'intersection
* Algorithme d'ajouts de valeur raster
* Algorithme de transformation de coordonnées
	
Algorithmes postérieurs disponibles à travrers :

* Sextante
* ArcGIS Server
* R
* GRASS 7

Les formats disponibles en entrée et en sortie :

* Données vecteur : GML2, GML3, SHP files, KML, WKT (Well-known Text), DGN
* Données Raster : Geotiff, AsciiGrid, NetCDF, JPEG, PNG, HDF-EOS, ERDAS HFA

Un client basé sur un navigateur

Standards implémentés
--------------------------------------------------------------------------------

* OGC Web Processing Service (WPS)
* OGC GML2 SimpleFeatures
* OGC GML3 SimpleFeatures

Détails
--------------------------------------------------------------------------------

**Site Web:** http://52north.org/wps

**License:** GPL

**Version du logiciel:** WPS 3.0

**Plateformes supportées:** Windows, Linux, Mac

**Support commercial:** http://www.52north.org


Démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/52nWPS_quickstart>`
