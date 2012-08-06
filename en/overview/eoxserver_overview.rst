:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: 
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer is a server for Earth Observation (EO) data. More precisely it is 
a Python application and framework for presenting EO data and metadata.

EOxServer's mission: To provide an Open Source software framework to ease 
the online provision of big Earth Observation data archives via Open 
Standard services for efficient exploitation by users.

* Open Source: MIT-style license
* software framework: Entirely based on Open Source (Python, :doc:`MapServer <mapserver_overview>`, 
  Django/GeoDjango, :doc:`GDAL <gdal_overview>`, :doc:`SpatiaLite <spatialite_overview>`, or 
  :doc:`PostGIS <postgis_overview>`, and PROJ.4)
* ease online provision: Admin GUI and command line data registration
* big Earth Observation data archives: Operators register existing raster data 
  archives
* Open Standard services: Open in the sense of freely available; Open 
  Geospatial Consortium (OGC); WMS, WCS, EO-WMS, EO-WCS
* efficient exploitation by users: User defined sub-setting; view and download

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.jpg
  :scale: 50 %
  :alt: EOxServer embedded client screen shot
  :align: right


Core Features
--------------------------------------------------------------------------------

The available core features are:

* Support of GML AP – Coverages for RectifiedGridCoverages
* Support of adopted WCS 2.0 specification (Core including GetCapabilities, 
  DescribeCoverage, and GetCoverage requests, KVP-, and XML/POST protocol 
  binding)
* Anticipated support of envisaged extensions: Coverage format, GeoTIFF 
  encoding, predefined (or EPSG) CRSs, scaling & interpolation, and 
  non-referenced access. By "anticipating" we mean to reflect the latest 
  WCS.SWG discussions as well as to follow the relevant parts of the previous 
  1.1 and 1.0 versions of WCS.
* Support of 2-D EO Coverages derived from gmlcov:RectifiedGridCoverage
* Support of 2-D EO Coverages derived from gmlcov:ReferenceableGridCoverage
* Support of Dataset Series as a collection of EO Coverages e.g. in a time 
  series
* Support of new DescribeEOCoverageSet operation on Dataset Series and EO 
  Coverages
* Support of Stitched Mosaic of Rectified EO Coverages including concept of 
  contributingFootprint
* Support of EO Metadata (retrieval and evaluation in DescribeEOCoverageSet 
  operation)
* Protocoll bindings supported:

 * KVP
 * XML/POST (used together with SOAP2POST Proxy to support XML/SOAP protocol 
   binding) 

* Coverage formats supported:

 * GeoTIFF
 * Formats supported by the GDAL library (support needs to be verified for 
   each required format separately) 

* Support of EO-WMS for EO Coverages 

Implemented Standards
--------------------------------------------------------------------------------

* Support of numerous Open Geospatial Consortium  (OGC) standards

  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

Demo
--------------------------------------------------------------------------------

* `Local <http://localhost/eoxserver/>`_
* `Online <https://eoxserver.org/demo_stable/>`_

Documentation
--------------------------------------------------------------------------------

* `EOxServer 0.2.1 Documentation <../../eoxserver-docs/EOxServer_documentation.pdf>`_

Details
--------------------------------------------------------------------------------

**Website:** http://eoxserver.org/

**Licence:** `MIT-style license <http://eoxserver.org/doc/copyright.html#license>`_

**Software Version:** 0.2.1

**Supported Platforms:** Linux, Windows, Mac

**API Interfaces:** Python

**Support:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

Quickstart
--------------------------------------------------------------------------------
    
* :doc:`Quickstart documentation <../quickstart/eoxserver_quickstart>`
