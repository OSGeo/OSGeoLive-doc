:Author: OSGeoLive
:Author: Javier Sanchez, GeoNaTec
:Reviewer: Cameron Shorter
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_josm@
@OSGEO_KIND_josm@


@NAME_josm@
================================================================================

Desktop Editor for OpenStreetMap data
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

JOSM is a feature rich, extensible, offline desktop editor for OpenStreetMap (OSM) data, written in Java.

It supports loading stand-alone GPX tracks and GPX track data as well as editing existing nodes (points), ways (lines), metadata tags (name/value information) and relations (ordered sequence of points and lines) from the OSM database.
GPX tracks, are usually downloaded in advance from a GPS receiver or from other sources.

A number of specialised plugins have been written for JOSM, which are available for download and install.

@SCREENSHOT_josm@

Core Features
--------------------------------------------------------------------------------

* Common GIS Desktop Interface tools:

  * Tool bar customization, View control (zoom, pan. etc), styles, icons and layers management.

* Download and upload OSM vector data.

* Open local data:

  * NMEA-0183 files: .nmea, .nme, .nma, .log, .txt
  * OSM files: .osm, .xlm, .osmbz2, .osmbz
  * OSM change file: .osc, .osc.bz2, .osc.bz, .osc.gz
  * images (.jpg)

* Imagery:
  
  * Visualize basemaps from OSM, Bingsat, Lansat, MapBox satellite, MapQuest Open Aerial or any other WMS sources.

* Editing Tools:

  * Nodes: merge, join, unglue, distribute, align in circle, align in line, join node to way, and more.
  * Ways: split, combine, reverse, simplify, unglue ways, and more.
  * Areas: join overlapping areas, create multi-polygon, and more.

* Audio mapping: survey recording management.

* Photo mapping: survey pictures management.
 
* Plugins: A list of specialized plugins are available for download.


Implemented Standards
--------------------------------------------------------------------------------

* JOSM views WMS layers, but uses the `OSM API <http://wiki.openstreetmap.org/wiki/API_v0.6>`_ to communicate with OSM database.


Details
--------------------------------------------------------------------------------

**Website:** https://josm.openstreetmap.de/

**Licence:** GNU General Public License (GPL) version 2. Note: JOSM plugins may use other licences.

**Software Version:** r11427

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** Java


@QUICKSTART_josm@
 
.. presentation-note
    JOSM is a desktop OpenStreetMap editor which provides many advanced features and can also be used offline.
