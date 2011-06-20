:Author: Oliver Tonnhofer
:Version: osgeo-live5.0
:License: Creative Commons Attribution 3.0 Unported License

.. _mapproxy-overview:

.. image:: ../../images/project_logos/logo-mapproxy.png
  :alt: project logo
  :align: right
  :target: http://mapproxy.org/

MapProxy
========

Swiss army knife for WMS and tile services
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapProxy is *the* swiss army knife for all WMS and tile services.
It caches, accelerates and transforms data from existing map services and serves any desktop or web GIS client.

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: center

MapProxy is not only a tile cache solution, but also offers many new and innovative features like full support for WMS clients. 

MapProxy is actively developed and supported, it is released under the `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_, runs on Unix/Linux/Mac OS X and Windows and is easy to install and to configure. 

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


Demo
----

* Start MapProxy (*Geospatial* --> *Web Services* --> *Start MapProxy*)
* `Open demo in Firefox <http://localhost:8012/demo>`_

Documentation
-------------

* `MapProxy 1.1.0 Documentation <file:///usr/local/share/mapproxy/doc/index.html>`_


Details
-------

**Website:** http://mapproxy.org/

**Licence:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Software Version:** 1.1.0

**Supported Platforms:** Linux, Mac, Windows

**Support:** http://mapproxy.org/support.html


Quickstart
----------
    
* `Quickstart documentation <../quickstart/mapproxy_quickstart.html>`_
