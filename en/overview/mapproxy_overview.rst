:Author: Oliver Tonnhofer
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeo-live11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy
================================================================================

Proxy WMS & tile services
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: right

MapProxy speeds up mapping applications by pre-rendering and integrating maps from multiple sources and storing in a local cache.
Layers can be made transparent, projections can be changed, multiple map layers can be transformed into one, watermarks can be added, and more...

MapProxy is flexible and scales from simple to complex use-cases: from a single tile cache for an :doc:`OpenLayers <openlayers_overview>` web client to a central SDI node that combines, unifies and accelerates dozens of distributed WMS services.


Core Features
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/800x600/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: MapProxy demo
  :align: right

Input sources:
  * WMS 1.0.0–1.3.0 (:doc:`MapServer <mapserver_overview>`, :doc:`GeoServer <geoserver_overview>`, etc.)
  * TMS, WMTS (TileCache, GeoWebcache, etc.)
  * Mapserver and Mapnik (directly, without WMS)
  * any TileCache, Google Maps or Bing compatible source

Services:
  * WMS (1.0.0-1.3.0)
  * TMS
  * WMTS
  * KML SuperOverlays

Tile cache:
  * stores identical images just once (e.g. ocean tiles)
  * stores tiles in filesystem, MBTile files or CouchDB
  * add watermark to tiles

Source options:
  * limit sources to geometries (from Shapefile for example)
  * add transparency to opaque layers
  * merge multiple sources
  * reproject to other SRS

WMS Features:
  * build layer trees from different sources
  * create ``GetMap`` responses from cache with support for free-zooming and any projection (for any Desktop GIS)
  * accelerates existing WMS 10 to 100 times
  * respond to ``GetLegendGraphic`` requests
  * cascade ``GetFeatureInfo`` requests with optional XSL transformations
  * on-the-fly reprojection
  * convert WMS versions and image formats

Security:
  * flexible and powerful authorization API
  * fine-grained control over services and layers
  * restrict access to polygon areas (for WMS and tile services)
  * integrate with existing user databases and authentication methods

Powerful tools:
  * efficient seed tool for cache pre-filling that can seed polygon areas
  * export cached tiles to other formats
  * calculate scales and show grid configurations

Other features:
  * simple but powerful configuration format (YAML/JSON)
  * OpenLayers based demo client
  * run multiple WMS services in one MapProxy instance
  * add attribution lines to the images
  * support for non-image raster data like DEMs
  * many more

Implemented Standards
--------------------------------------------------------------------------------

MapProxy implements the following open specifications:

* OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 1.0.0 (KVP and RESTful)
* OSGeo TMS 1.0.0
* OGC KML 2.2 SuperOverlays


Details
--------------------------------------------------------------------------------

**Website:** http://mapproxy.org/

**Licence:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Software Version:** |version-mapproxy|

**Supported Platforms:** Linux, Mac, Windows

**Support:** http://mapproxy.org/support.html


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/mapproxy_quickstart>`
