:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: 
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer est un serveur pour l'observation des données terrestre (Earth 
Observation (EO)). Plus précisément c'est une application et un framework 
Python pour présenter des EO et leurs métadonnées.

La mission d'EOxServer est de fournir un ensemble de solutions basées sur des 
logiciels libres pour faciliter la mise en ligne de gros jeux de données issues de
l'observation terrestre et répondants à des standards pour faciliter l'exposition
aux utilisateurs.

* Open Source: MIT-style licence
* Toute l'interface de travail est basée sur des logiciels libres (Python, :doc:`MapServer <mapserver_overview>`, 
  Django/GeoDjango, :doc:`GDAL <gdal_overview>`, :doc:`SpatiaLite <spatialite_overview>`, ou 
  :doc:`PostGIS <postgis_overview>`, et PROJ.4)
* La gestion est facilitée par une interface graphique en ligne, et il 
  est aussi possible d'utiliser des lignes de commandes
* Grosses archives de jeux de données EO: les opérateurs enregistrés ont accès aux données raster
  sous forme d'archives
* Conforme au standard ouvert pour les services web: ouvert dans le sens de gratuitement mise 
  a disposition; Open Geospatial Consortium (OGC); WMS, WCS, EO-WMS, EO-WCS
* utilisation efficace par les utilisateurs : ceux si définissent des sélections; visualisent et 
téléchargent.

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.jpg
  :scale: 50 %
  :alt: EOxServer embedded client screen shot
  :align: right


Core Features
--------------------------------------------------------------------------------

Les fonctionnalités disponibles : 

* Support de GML AP - Coverages pour RectifiedGridCoverages
* Support de la spécification WCS 2.0 (Core embarque GetCapabilities, 
  DescribeCoverage, et GetCoverage requests, KVP-, et XML/POST protocole 
  binding)
* Support anticipé d'extensions envisagées : Coverage format, GeoTIFF,
  CRs (ou EPSG) près définit, mise à l'échelle et interpolation, accès non
  référencé. Par "anticipé" nous voulons dire que ces évolutions sont le reflet 
  des dernières discussions autour de la norme WCS.SWG comme celle-ci va être
  intégrée dans la prochaine évolution de la norme dans sa version 1.1.
* Support du 2-D EO Coverages dérivé de gmlcov:RectifiedGridCoverage
* Support du 2-D EO Coverages dérivé de gmlcov:ReferenceableGridCoverage
* Support des séries de données comme collection de EO Coverages p. ex. dans
  des séries temporelles.
* Support du nouveau DescribeEOCoverageSet pour les opérations sur des 
  jeux de données et des EO Coverages
* Support du tuilage mosaïqué rectifié inclus dans le concept de contributingFootprint
* Support des métadonnées EO (récupérer et évalué dans les opérations DescribeEOCoverageSet)
* Protocoll bindings supporté:
  
 * KVP
 * XML/POST (utiliser avec SOAP2POST Proxy pour supporter XML/SOAP protocole 
   binding)
Format supporté: 

 * GeoTIFF
 * Les formats supportés par la librairie GDAL (le support doit être vérifié pour 
   chaque format séparément) 
* Support de EO-WMS pour EO Coverages


Standard implémenter
--------------------------------------------------------------------------------

* Support d'un grand nombre de standards de l'Open Geospatial Consortium  (OGC)

  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

Démo
--------------------------------------------------------------------------------

* `Local <http://localhost/eoxserver/>`_
* `Online <https://eoxserver.org/demo_stable/>`_

Documentation
--------------------------------------------------------------------------------

* `EOxServer 0.2.1 Documentation <../../eoxserver-docs/EOxServer_documentation.pdf>`_

Détails
--------------------------------------------------------------------------------

**Website:** http://eoxserver.org/

**Licence:** `MIT-style licence <http://eoxserver.org/doc/copyright.html#license>`_

**Software Version:** 0.2.1

**Supported Platforms:** Linux, Windows, Mac

**API Interfaces:** Python

**Support:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/eoxserver_quickstart>`
