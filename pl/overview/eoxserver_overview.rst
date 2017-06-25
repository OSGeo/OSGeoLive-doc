:Author: OSGeo-Live
:Author: Stephan Meissl, Stephan Krause
:Translator: Milena Nowotarska, OSGeo
:Reviewer:
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-eoxserver.png
  :alt: project logo
  :align: right
  :target: http://eoxserver.org/

EOxServer
================================================================================

Usługi sieciowe
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

EOxServer jest serwerem służącym do prezentowania dużych archiwów danych
Earth Observation (EO) i ich metadanych z użyciem Otwartych Standardów.

Earth Observation data currently supported includes 2D raster data generally 
acquired using sensors on satellites or aircrafts and including information 
about the time of acquisition and the footprint on planet Earth. It is 
typically used to monitor Earth's natural and built environment.

EOxServer builds upon an Open Source stack of software which includes 
Python, :doc:`MapServer <mapserver_overview>`, Django/GeoDjango, :doc:`GDAL 
<gdal_overview>`, PROJ.4 and a :doc:`SpatiaLite <spatialite_overview>` or 
:doc:`PostGIS <postgis_overview>` database.

.. image:: /images/screenshots/1024x768/eoxserver_screenshot.png
  :scale: 50 %
  :alt: EOxServer embedded client
  :align: right

Główne funkcje
--------------------------------------------------------------------------------

* Przeglądanie, filtrowanie, wybieranie i pobieranie danych EO
* Rejestracja archiwów danych EO
* Web based and command line administration interface
* Publikowanie danych z wykorzystaniem standardów :doc:`Open Geospatial Consortium (OGC)  
  <../standards/standards>`:

  * :doc:`Web Coverage Service (WCS) <../standards/wcs_overview>` 1.0, 1.1 and 
    2.0 & proposed EO-WCS
  * :doc:`Web Map Service (WMS) <../standards/wms_overview>` & EO-WMS
  * Proposed extensions to WCS including: GeoTIFF encoding, predefined 
    projections (CRSs), scaling, and interpolation.
  * Protocols supported are: KVP and XML/POST (used together with SOAP2POST
    Proxy to provide also XML/SOAP)
* Publikowanie przy użyciu poniższych formatów i zgrupowań:

  * 2-D EO Coverages derived from gmlcov:RectifiedGridCoverage
  * 2-D EO Coverages derived from gmlcov:ReferenceableGridCoverage
  * Dataset Series as a collection of EO Coverages e.g. in a time series
  * Stitched Mosaics of Rectified EO Coverages including contributingFootprint

* Obsługiwane formaty pokrycia:

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

**Wersja programu:** |version-eoxserver|

**Systemy operacyjne:** Linux, Windows, Mac

**Interfejsy API:** Python

**Wsparcie:** http://eoxserver.org/doc/en/users/basics.html#where-can-i-get-support

Wprowadzenie
--------------------------------------------------------------------------------
    
* :doc:`Przejdź do wprowadzenia <../quickstart/eoxserver_quickstart>`
