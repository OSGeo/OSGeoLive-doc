:Author: OSGeoLive
:Author: Stephan Meissl, Stephan Krause
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_eoxserver@
@OSGEO_KIND_eoxserver@

@NAME_eoxserver@
================================================================================

About
--------------------------------------------------------------------------------

EOxServer is a server for presenting big Earth Observation (EO) data
archives and metadata via Open Standards.

Earth Observation data currently supported includes 2D raster data generally
acquired using sensors on satellites or aircrafts and including information
about the time of acquisition and the footprint on planet Earth. It is
typically used to monitor Earth's natural and built environment.

EOxServer builds upon an Open Source stack of software which includes
Python, :doc:`MapServer <mapserver_overview>`, Django/GeoDjango, :doc:`GDAL
<gdal_overview>`, PROJ.4, and a :doc:`SpatiaLite <spatialite_overview>` or
:doc:`PostGIS <postgis_overview>` database.

.. image:: /images/projects/eoxserver/eoxserver_screenshot.png
  :scale: 50 %
  :alt: EOxServer embedded client
  :align: right

Core Features
--------------------------------------------------------------------------------

* View, filter, subset, and download EO data
* Register EO data archives
* Web based and command line administration interface
* Publish data via `Open Geospatial Consortium (OGC) standards
  <http://www.opengeospatial.org/standards>`__:

  * `Web Coverage Service (WCS) <http://www.opengeospatial.org/standards/wcs>`__ 1.0, 1.1 and
    2.0 & proposed EO-WCS
  * `Web Map Service (WMS) <http://www.opengeospatial.org/standards/wms>`__ & EO-WMS
  * Proposed extensions to WCS including: GeoTIFF encoding, predefined
    projections (CRSs), scaling, and interpolation.
  * Protocols supported are: KVP and XML/POST (used together with SOAP2POST
    Proxy to provide also XML/SOAP)

* Publish using the following formats and groupings:

  * 2-D EO Coverages derived from gmlcov:RectifiedGridCoverage
  * 2-D EO Coverages derived from gmlcov:ReferenceableGridCoverage
  * Dataset Series as a collection of EO Coverages e.g. in a time series
  * Stitched Mosaics of Rectified EO Coverages including contributingFootprint

* Coverage formats supported:

 * GeoTIFF
 * Formats supported by the GDAL library

Implemented Standards
--------------------------------------------------------------------------------

  * WCS, EO-WCS
  * WMS, EO-WMS
  * WPS
  * GML, GMLCOV, EO-O&M
  * OpenSearch

Details
--------------------------------------------------------------------------------

**Website:** https://eoxserver.readthedocs.org/

**Licence:** `MIT-style license <https://eoxserver.readthedocs.org/en/latest/copyright.html#license>`_

**Software Version:** |version-eoxserver|

**Supported Platforms:** Linux, Windows, Mac

**API Interfaces:** Python

**Support:** https://eoxserver.readthedocs.org/en/latest/users/basics.html#where-can-i-get-support

@QUICKSTART_eoxserver@

