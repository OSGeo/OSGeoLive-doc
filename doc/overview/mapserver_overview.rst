:Author: Alan Boudreault, Steve Lime
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_mapserver@
@OSGEO_KIND_mapserver@


@NAME_mapserver@
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapServer is an `Open Source <https://opensource.org/>`_ geographic data
rendering engine written in C. Beyond browsing GIS data, MapServer allows you
create "geographic image maps", that is, maps that can direct users to web
content. For example, the Minnesota DNR `Recreation Compass <http://www.dnr.state.mn.us/maps/compass.html>`_
provides users with more than 10,000 web pages, reports and maps via a single
application. The same application serves as a "map engine" for other portions
of the site, providing spatial context where needed.

MapServer was originally developed by the University of Minnesota (UMN) ForNet project in cooperation with NASA, and the Minnesota Department of Natural Resources (MNDNR). Later it was hosted by the TerraSIP project, a NASA sponsored project between the UMN and a consortium of land management interests.

MapServer is now a project of `OSGeo <https://www.osgeo.org>`_, and is maintained by a growing number of developers (nearing 20) from around the world. It is supported by a diverse group of organizations that fund enhancements and maintenance, and administered within OSGeo by the MapServer Project Steering Committee made up of developers and other contributors.

@SCREENSHOT_mapserver@

Core Features
--------------------------------------------------------------------------------


* Advanced cartographic output

  * Scale dependent feature drawing and application execution
  * Feature labeling including label collision mediation
  * TrueType font support for labeling and symbolization
  * Map element automation (scalebar, reference map, and legend)
  * Thematic mapping using logical or regular expression-based classes
  * Plugable renderer support with drivers for AGG, Cairo and others
  * Special provisioning for tiled output generation
  * Mask Layers
  * Precise Symbol Placement
  * Complex Multi Label/Symbol Symbology
  * Vector Fields
  * Label Leader Offsetting
  * SVG Symbology
  * Multiple Font Support
  * Dynamic Heatmaps
  * UTF Grid Support
  * Layer Compositing

* Sophisticated spatial query support

  * Identify features by attributes, point, bounding box or geometry across one or more layers
  * Support for raster queries
  * Fully customizable, template driven output
  * OGR-based query output generation 

* Support for popular scripting and development environments

  * CGI/FastCGI
  * PHP, Python, Perl, Ruby, Java, and .NET

* Cross-platform support

  * Linux, Windows, Mac OS X, Solaris, and more

* A multitude of raster and vector data formats

  * Native support for ESRI shapefiles, PostGIS and Oracle Spatial
  * Many other formats via GDAL and OGR

* Map projection support

  * On-the-fly map projection with 1000s of projections through the Proj.4 library

Implemented Standards
--------------------------------------------------------------------------------

* Support of numerous Open Geospatial Consortium  (OGC) standards

  * |WMS| (client/server)
  * |WFS| (non-transactional, client/server)
  * |WMC|
  * |WCS|
  * |FE|
  * |SLD|
  * |GML|
  * |SOS|
  * OM

* INSPIRE View Service compliant

Demo
--------------------------------------------------------------------------------

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

Documentation
--------------------------------------------------------------------------------

* `MapServer 7.0 Documentation <../../../mapserver/doc/index.html>`_

Details
--------------------------------------------------------------------------------

**Website:** @WEB_mapserver@

**Licence:** `MIT-style license <https://mapserver.org/copyright.html#license>`_

**Software Version:** |version-mapserver|

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** C, PHP, Python, Perl, Ruby, Java, and .NET

**Support:** https://mapserver.org/community/

@VMDK_mapserver@
@QUICKSTART_mapserver@
    
.. presentation-note
    Mapserver is one of the earliest Open Source Web Map Services. The codebase is very mature and it retains a large development community. It serves data through Web Map Service images, Web Feature Service vectors, a Web Coverage Service and Sensor Observation Services. It connects to a wide range of databases and data stores. It is written in C and has connections for a number of other languages.
