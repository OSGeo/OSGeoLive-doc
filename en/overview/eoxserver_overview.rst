:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-eoxserver.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer is a server for presenting big Earth Observation (EO) data 
archives and metadata via Open Standards. Earth Observation data includes 
information about the time of acquisition and the footprint on planet Earth 
and is typically used to monitor Earth's natural and built environment.

EOxServer builds upon an Open Source stack of software which includes 
Python, :doc:`MapServer <mapserver_overview>`, Django/GeoDjango, :doc:`GDAL 
<gdal_overview>`, PROJ.4 and a :doc:`SpatiaLite <spatialite_overview>` or 
:doc:`PostGIS <postgis_overview>` database.

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.jpg
  :scale: 50 %
  :alt: EOxServer embedded client
  :align: right

Core Features
--------------------------------------------------------------------------------

* Filter, view, subset, and download EO data by users
* Register and provide online EO data by data providers
* Web based and command line administration interface
* Registration of existing raster data archives
* Publish data via Open Geospatial Consortium (OGC) standards:

.. Comment: You mention "core WCS support". Do you cover all the WCS queries? 
  What is not supported?
  Am I right in implying that you cover all WCS 2.0 functionality, as well
  as some extra queries not in the standard yet?
.. End Comment
.. Reply:
  Yes, you're right and in addition WCS 2.0 is structured in a core and several 
  extensions.
.. End Reply

  * Web Coverage Service (WCS) 1.0, 1.1 and 2.0 & proposed EO-WCS
  * Web Map Service (WMS) & EO-WMS
  * Proposed extensions to WCS including: GeoTIFF encoding, predefined 
    projections (CRSs), scaling, and interpolation.
  * Protocols supported are KVP, XML/POST (used together with SOAP2POST
    Proxy to provide an XML/SOAP interface).

* Publish using the following formats and groupings:

  * 2-D EO Coverages derived from gmlcov:RectifiedGridCoverage
  * 2-D EO Coverages derived from gmlcov:ReferenceableGridCoverage
  * Dataset Series as a collection of EO Coverages e.g. in a time series
  * Stitched Mosaic of Rectified EO Coverages including contributingFootprint

* Coverage formats supported:

 * GeoTIFF.
 * Formats supported by the GDAL library.

Implemented Standards
--------------------------------------------------------------------------------

  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

Documentation
--------------------------------------------------------------------------------

* `Local <../../eoxserver-docs/EOxServer_documentation.pdf>`_
* `Online <http://eoxserver.org/doc>`_


Details
--------------------------------------------------------------------------------

**Website:** http://eoxserver.org/

**Licence:** `MIT-style license <http://eoxserver.org/doc/copyright.html#license>`_

**Software Version:** 0.2.2

**Supported Platforms:** Linux, Windows, Mac

**API Interfaces:** Python

**Support:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/eoxserver_quickstart>`
