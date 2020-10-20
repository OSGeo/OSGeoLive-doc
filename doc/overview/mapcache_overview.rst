:Author: Seth Girvin
:Version: osgeolive13.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_mapcache@
@OSGEO_KIND_mapcache@


@NAME_mapcache@
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapCache is a server that implements tile caching to speed up access to WMS layers. The primary objectives are to be fast and easily deployable, 
while offering the essential features (and more!) expected from a tile caching solution. 

MapCache is part of the MapServer family, but can be configured to cache and serve data from any geospatial server
that uses WMS. MapCache can be run on Apache as a module or on any web server that supports CGI/FastCGI such as IIS, Nginx, and Jetty. 

@SCREENSHOT_mapcache@

Core Features
--------------------------------------------------------------------------------

* Allows tile caches to be stored in

  * on disk
  * in the cloud using REST (S3, Azure, Google)
  * in databases including SQLite, Berkeley DB, Riak
  * in Memcache

* Includes a seeder application
* Caching based on dimensions (such as time)
* Allows caching of Mapbox Vector (MVT) and UTFGrid tiles
* Customizable grids
* Allows tiles to be "assembled" together - allowing tiles for different datasets to be
  merged together into a single tile to send to the client
* Includes a seeder application to pre-fill caches from the command line
* Allows requests to be proxied back to a server
* An inbuilt demo interface

Implemented Standards
--------------------------------------------------------------------------------

* Support of numerous Open Geospatial Consortium  (OGC) standards

  * |WMS|
  * |WMTS|

* Additional standards include:

  * `TMS <https://wiki.osgeo.org/wiki/Tile_Map_Service_Specification>`__
  * Google Maps XYZ
  * KML SuperOverlays

Demo
--------------------------------------------------------------------------------

* `Default MapCache Demo <http://localhost/mapcache/demo/>`_

Documentation
--------------------------------------------------------------------------------

* `MapCache Documentation <https://mapserver.org/mapcache/>`_

Details
--------------------------------------------------------------------------------

**Website:** @WEB_mapcache@

**Licence:** `MIT-style license <https://mapserver.org/copyright.html#license>`_

**Software Version:** |version-mapcache|

**Supported Platforms:** Windows, Linux, Mac

**Support:** https://mapserver.org/community/

@VMDK_mapcache@
@QUICKSTART_mapcache@
    
.. presentation-note
    MapCache is a server that implements tile caching to speed up access to WMS layers. MapCache is part of the MapServer family, 
    but can be configured to cache and serve data from any geospatial server that uses WMS. 
