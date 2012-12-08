:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live6.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: ../../images/project_logos/logo-eoxserver.png
  :scale: 100 %
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

Usługi sieciowe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer is a server for presenting big Earth Observation (EO) data 
archives and metadata via Open Standards.

Earth Observation data currently supported includes 2D raster data generally 
acquired using sensors on satellites or aircrafts and including information 
about the time of acquisition and the footprint on planet Earth. It is 
typically used to monitor Earth's natural and built environment.

EOxServer builds upon an Open Source stack of software which includes 
Python, :doc:`MapServer <mapserver_overview>`, Django/GeoDjango, :doc:`GDAL 
<gdal_overview>`, PROJ.4 and a :doc:`SpatiaLite <spatialite_overview>` or 
:doc:`PostGIS <postgis_overview>` database.

.. image:: ../../images/screenshots/1024x768/eoxserver_screenshot.jpg
  :scale: 50 %
  :alt: EOxServer embedded client
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

* View, filter, subset, and download EO data
* Upload and/or register external EO datasets
* Web based and command line administration interface
* Publish data via Open Geospatial Consortium (OGC) standards:

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

* Obsługivane formaty pokrycia:

 * GeoTIFF
 * Formaty obsługiwane przez bibliotekę GDAL

Zaimplementowane standardy
--------------------------------------------------------------------------------

  * WCS, EO-WCS
  * WMS, EO-WMS
  * GML, GMLCOV, EO-O&M

Szczegóły
--------------------------------------------------------------------------------

**Strona internetowa:** http://eoxserver.org/

**Licencja:** `MIT-style license <http://eoxserver.org/doc/copyright.html#license>`_

**Wersja programu:** 0.2.2

**Systemy operacyjne:** Linux, Windows, Mac

**Interfejsy API:** Python

**Wsparcie:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

Wprowadzenie
--------------------------------------------------------------------------------
    
* :doc:`Przejdź do wprowadzenia <../quickstart/eoxserver_quickstart>`
