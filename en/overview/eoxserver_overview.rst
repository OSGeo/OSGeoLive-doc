:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Reviewer: Cameron Shorter, LISAsoft
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. Comment: This image is too big for an icon. It should ideally be 125x125
  pixels. Note this icon is included into diagrams in powerpoint presentations
  which requires a constant and size for the image. (Otherwise the image is
  compressed to be very small and thin)
.. End comment.
  
.. image:: ../../images/project_logos/logo-eoxserver-2.png
  :scale: 65 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer is a server for presenting big Earth Observation (EO) data archives and metadata via Open Standards.

.. Comment:
.. In 1 sentence or so, explain what is special or different about Big Earth Observation data
  Eg: Big Earth Observation data includes such things as .... and is used for
  the anlaysis of ...
.. End Comment

EOxServer builds upon an Open Source stack of software which includes Python, :doc:`MapServer <mapserver_overview>`, Django/GeoDjango, :doc:`GDAL <gdal_overview>`, PROJ.4 and a :doc:`SpatiaLite <spatialite_overview>` or :doc:`PostGIS <postgis_overview>` database.

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.jpg
  :scale: 50 %
  :alt: EOxServer embedded client
  :align: right

Core Features
--------------------------------------------------------------------------------

.. Comment:
  Is the following bullet point correct?
.. End Comment
* Upload, search, filter, view and download EO data.
* Web based and command line administration interface.
* Registration of existing raster data archives.
* Publish data via Web Coverage Service (WCS) standard:

.. Comment: You mention "core WCS support". Do you cover all the WCS queries? 
  What is not supported?
  Am I right in implying that you cover all WCS 2.0 functionality, as well
  as some extra queries not in the standard yet?
.. End Comment

  * WCS 1.0, 1.1 and 2.0 support
 
.. Comment: If you cover all WCS 2.0, then no need to list each interface.
    including: GetCapabilities, DescribeCoverage, and GetCoverage requests.
.. End Comment

  * Proposed extensions to WCS including: GeoTIFF 
    encoding, predefined projections (CRSs), scaling & interpolation, and 
    non-referenced access.
  * Protocols supported are KVP, XML/POST (used together with SOAP2POST
    Proxy to provide an XML/SOAP interface).

* Publish using the following formats:

  * GML AP – Coverages for RectifiedGridCoverages.
  * 2-D EO Coverages derived from gmlcov:RectifiedGridCoverage.
  * 2-D EO Coverages derived from gmlcov:ReferenceableGridCoverage.
  * Dataset Series as a collection of EO Coverages e.g. in a time series.
  * DescribeEOCoverageSet operation on Dataset Series and EO Coverages.
  * Stitched Mosaic of Rectified EO Coverages including contributingFootprint.
  * EO Metadata.

* Coverage formats supported:

 * GeoTIFF.
 * Formats supported by the GDAL library.

* Publishing of images through WMS and EO-WMS standard

Implemented Standards
--------------------------------------------------------------------------------

  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

.. Comment: We don't include the demo in this doc. Instead it is covered in the Quickstart.
  Demo
  --------------------------------------------------------------------------------
  * `Local <http://localhost/eoxserver/>`_
  * `Online <https://eoxserver.org/demo_stable/>`_
.. End comment.

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
