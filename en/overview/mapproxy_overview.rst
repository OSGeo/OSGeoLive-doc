:Author: Oliver Tonnhofer
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. _mapproxy-overview:

.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy
========

Proxy WMS & tile services
~~~~~~~~~~~~~~~~~~~~~~~~~

MapProxy speeds up mapping applications by pre-rendering and integrating maps from multiple sources and storing in a local cache.
Layers can be made transparent, projections can be changed, multiple map layers can be transformed into one, watermarks can be added, and more…

MapProxy is flexible and scales from simple to complex use-cases: From a single tile cache for an OpenLayers web client to a central SDI node that combines, unifies and accelerates dozens of distributed WMS services.

Some real world examples: MapProxy is used for the German broadband atlas to deliver maps for thousands of users as fast as possible and the German Federal Agency for Cartography an Geodesy uses MapProxy to aggregate WMS services from all 16 states on the fly.

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: right


Features of MapProxy
--------------------

.. image:: ../../images/screenshots/800x600/mapproxy_demo.png
  :width: 796
  :height: 809
  :scale: 70 %
  :alt: MapProxy demo
  :align: right
 
Input sources:
  * WMS 1.0.0–1.3.0 (MapServer, GeoServer, etc.)
  * TMS (TileCache, GeoWebcache, etc.)
  * Mapserver and Mapnik (directly, without WMS)
  * any TileCache, Google Maps or Bing compatible source

Services:
  * WMS (1.0.0-1.3.0)
  * TMS
  * WMTS
  * KML SuperOverlays

Tile cache:
  * stores identical images just once (e.g. ocean tiles)
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

Other features:
  * simple but powerful configuration format (YAML/JSON)
  * OpenLayers based demo client (see right)
  * run multiple WMS services in one MapProxy instance
  * add attribution lines to the images
  * support for non-image raster data like DEMs
  * support for custom authorization with fine-grained control over services and layers
  * many more

Implemented Standards
---------------------

MapProxy implements the following open specifications:

* OGC WMS 1.0.0, 1.1.0, 1.1.1, 1.3.0
* OGC WMTS 1.0.0
* OSGeo TMS 1.0.0
* OGC KML 2.2 SuperOverlays


Details
-------

**Website:** http://mapproxy.org/

**Licence:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Software Version:** 1.1.1

**Supported Platforms:** Linux, Mac, Windows

**Support:** http://mapproxy.org/support.html


Quickstart
----------
    
* :doc:`Quickstart documentation <../quickstart/mapproxy_quickstart>`
