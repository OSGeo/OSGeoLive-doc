:Author: Alan Boudreault, Steve Lime
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-mapserver-new.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://mapserver.org/

.. image:: ../../images/logos/OSGeo_project.png
  :scale: 100 %
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


MapServer
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

MapServer is an `Open Source <http://www.opensource.org>`_ geographic data rendering engine written in C. Beyond browsing GIS data, MapServer allows you create "geographic image maps", that is, maps that can direct users to web content. For example, the Minnesota DNR `Recreation Compass <http://www.dnr.state.mn.us/maps/compass.html>`_ provides users with more than 10,000 web pages, reports and maps via a single application. The same application serves as a "map engine" for other portions of the site, providing spatial context where needed.

MapServer was originally developed by the University of Minnesota (UMN) ForNet project in cooperation with NASA, and the Minnesota Department of Natural Resources (MNDNR). Later it was hosted by the TerraSIP project, a NASA sponsored project between the UMN and a consortium of land management interests.

MapServer is now a project of `OSGeo <http://www.osgeo.org>`_, and is maintained by a growing number of developers (nearing 20) from around the world. It is supported by a diverse group of organizations that fund enhancements and maintenance, and administered within OSGeo by the MapServer Project Steering Committee made up of developers and other contributors.

Core Features
--------------------------------------------------------------------------------

.. image:: ../../images/screenshots/1024x768/mapserver.png
  :scale: 50 %
  :alt: screenshot
  :align: right

* Advanced cartographic output

  * Scale dependent feature drawing and application execution
  * Feature labeling including label collision mediation
  * TrueType font support for labeling and symbolization
  * Map element automation (scalebar, reference map, and legend)
  * Thematic mapping using logical or regular expression-based classes
  * Plugable renderer support with drivers for AGG, Cairo, GD and OpenGL and others
  * Special provisioning for tiled output generation

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

  * Native support for ESRI shapefiles, PostGIS, ESRI ArcSDE and Oracle Spatial
  * Many other formats via GDAL and OGR

* Map projection support

  * On-the-fly map projection with 1000s of projections through the Proj.4 library

Implemented Standards
--------------------------------------------------------------------------------

* Support of numerous Open Geospatial Consortium  (OGC) standards

  * WMS (client/server), non-transactional WFS (client/server), WMC, WCS, Filter Encoding, SLD, GML, SOS, OM

Demo
--------------------------------------------------------------------------------

* `Itasca <http://localhost/mapserver_demos/itasca/>`_

Documentation
--------------------------------------------------------------------------------

* `MapServer 6.0.3 Documentation <../../mapserver/doc/index.html>`_

Details
--------------------------------------------------------------------------------

**Website:** http://www.mapserver.org/

**Licence:** `MIT-style license <http://mapserver.org/copyright.html#license>`_

**Software Version:** 6.0.3

**Supported Platforms:** Windows, Linux, Mac

**API Interfaces:** C, PHP, Python, Perl, Ruby, Java, and .NET

**Support:** http://mapserver.org/community/

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/mapserver_quickstart>`
