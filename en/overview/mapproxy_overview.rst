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

Cache WMS & tile services
~~~~~~~~~~~~~~~~~~~~~~~~~

MapProxy speeds up mapping applications by pre-rendering and integrating maps from multiple sources and storing in a local cache.
Layers can be made transparent, projections can be changed, multiple map layers can be transformed into one, watermarks can be added, and more ...

.. Cameron comment: How is MapProxy configured? Is there a web based management interface to it? A sentence talking about it here might be good. Also might want to add a line or two in the features.

.. image:: ../../images/screenshots/800x600/mapproxy.png
  :alt: MapProxy diagram
  :align: right

.. Commented out: MapProxy is *the* swiss army knife for all WMS and tile services.
..  Commented out:It caches, accelerates and transforms data from existing map services and serves any desktop or web GIS client.
.. Commented out: MapProxy is not only a tile cache solution, but also offers many new and innovative features like full support for WMS clients. 
.. Commented out, as details are covered below, and as all osgeo-live projects are quality Open Source: MapProxy is actively developed and supported, it is released under the `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_, runs on Unix/Linux/Mac OS X and Windows and is easy to install and to configure. 

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


.. Commented out at the moment, as this is not part of the template, but I like the idea of linking to the demo, and we might put that back in a future version of the docs (for all projects).
.. Demo
.. ----
.. 
.. * Start MapProxy (*Geospatial* --> *Web Services* --> *Start MapProxy*)
.. * `Open demo in Firefox <http://localhost:8011/demo>`_
.. 
.. Documentation
.. -------------
.. 
.. * `MapProxy 1.1.1 Documentation <../../mapproxy/index.html>`_


Details
-------

**Website:** http://mapproxy.org/

**Licence:** `Apache Software License 2.0 <http://www.apache.org/licenses/LICENSE-2.0.html>`_

**Software Version:** 1.1.1

**Supported Platforms:** Linux, Mac, Windows

**Support:** http://mapproxy.org/support.html


Quickstart
----------
    
* `Quickstart documentation <../quickstart/mapproxy_quickstart.html>`_
