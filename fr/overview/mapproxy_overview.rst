:Author: Oliver Tonnhofer
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: Logo du projet
  :align: right
  :target: http://mapproxy.org/

MapProxy
================================================================================

Proxy WMS & services de tuiles
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: Diagramme MapProxy
  :align: right

MapProxy accélère les applications de cartographie en prégénérant et intégrant des cartes depuis de multiples sources et en les stockant dans un cache local.
Les couches peuvent être rendues transparentes, les projections peuvent être changées, de multiples couches carte peuvent être transformées en une seule, des filigranes peuvent être ajoutés,  et plus encore...

MapProxy est flexible et s'adapte à des cas d'utilisation les plus simples aux plus complexes: d'un seul cache de tuiles pour un client web OpenLayers web à un noeud d'une IDS (Infrastructure de Données Spatiales) qui combine, unifie et accélère de nombreux services WMS distribués.

MapProxy est utilisé pour l'atlas allemand de la bande passante, pour transmettre des cartes à des milliers d'utilisateurs et l'agence fédérale allemande pour la cartographie et la géodésie utilise MapProxy pour agréger à la volée les services WMS provenant de 16 "lands" allemands.


Caractéristiques principales
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/800x600/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: Démo MapProxy
  :align: right

Sources en entrée:
  * WMS 1.0.0–1.3.0 (MapServer, GeoServer, etc.)
  * TMS, WMTS (TileCache, GeoWebcache, etc.)
  * Mapserver et Mapnik (directement, sans WMS)
  * TileCache ou n'importe quelle source compatible avec Google Maps ou Bing Maps

Services:
  * WMS (1.0.0-1.3.0)
  * TMS
  * WMTS
  * KML SuperOverlays

Cache de tuiles:
  * stocke les images identiques une seule fois (comme les tuiles des océans)
  * stocke les tuiles dans un sytème de fichiers, des fichiers MBTile ou dans CouchDB
  * ajoute un  filigrane sur les tuiles

Options sur les sources:
  * limite les sources à des géometries (depuis un Shapefile par exemple)
  * ajoute la transparence à des couches opaques
  * fusionne des sources multiples
  * reprojete vers d'autres SRS

Fonctionnalités WMS:
  * créé des arbres de couches depuis différentes sources
  * créé des réponses ``GetMap`` depuis le cache avec le support du zoom "libre" (sans notions de seuils de zoom) et n'importe quelle projection (pour n'importe quel SIG bureautique)
  * accélère les WMS existants avec un ordre de 10 à 100 fois.
  * répond aux requêtes ``GetLegendGraphic``
  * requêtes ``GetFeatureInfo`` en cascade avec des options de transformation XSL
  * reprojection à la volée
  * convertit les versions de WMS et les formats d'image

Sécurité
  * API pour gérer les autorisations flexible et puissante
  * contrôle fin sur les services et les couches
  * restriction d'accès sur les surfaces polygonales
  * intégration avec les bases de données et les méthodes d'authentification existantes

Autres fonctionnalités:
  * format de configuration simple mais puissant (YAML/JSON)
  * client de démo basé sur OpenLayers
  * lance plusieurs services WMS dans une seule instance MapProxy
  * ajouter les lignes d'attributions sur les images
  * support pour des images non-raster comme les DEM
  * plus encore....

Standards implémentés
--------------------------------------------------------------------------------

MapProxy implémente les spécifications ouvertes suivantes:

* OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 1.0.0 (KVP et RESTful)
* OSGeo TMS 1.0.0
* OGC KML 2.2 SuperOverlays


Détails
--------------------------------------------------------------------------------

**Site web:** http://mapproxy.org/

**Licence:** `Licence Apache Software 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Version du logiciel:** 1.4.0

**Plates-formes supportées:** Linux, Mac, Windows

**Support:** http://mapproxy.org/support.html

**Documentation:** <../../mapproxy/index.html>`_


Guide de démarrage rapide
--------------------------------------------------------------------------------

* :doc:`Documentation du guide de démarrage rapide <../quickstart/mapproxy_quickstart>`
