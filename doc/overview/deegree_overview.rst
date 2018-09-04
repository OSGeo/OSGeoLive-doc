:Author: Johannes Wilden
:Author: Markus Schneider
:Author: Danilo Bretschneider
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_deegree@
@OSGEO_KIND_deegree@


@NAME_deegree@
================================================================================

About
--------------------------------------------------------------------------------


deegree provides geospatial webservices based upon `Open Geospatial Consortium (OGC) <http://www.opengeospatial.org>`_ and `INSPIRE Network Services <http://inspire.jrc.ec.europa.eu>`_ specifications. deegree supports:

* `Web Feature Services (WFS) <http://www.opengeospatial.org/standards/wfs>`_: Serves vector data from geospatial data
* `Web Map Services (WMS) <http://www.opengeospatial.org/standards/wms>`_: Serves maps rendered from geospatial data
* `Web Map Tile Services (WMTS) <http://www.opengeospatial.org/standards/wmts>`_: Serves pre-rendered map tiles
* `Catalogue Services for the Web (CSW) <http://www.opengeospatial.org/standards/cat>`_: Performs searches for geospatial datasets and services
* `Web Processing Services (WPS) <http://www.opengeospatial.org/standards/wps>`_: Executes geospatial processes

@SCREENSHOT_deegree@

Core Features
--------------------------------------------------------------------------------

**WFS**

* Implements WFS standards 1.0.0, 1.1.0 and 2.0.0
* Fully transactional (even for rich data models)
* Supports KVP, XML and SOAP requests
* GML 2/3.0/3.1/3.2 output/input
* Support for GetGmlObject requests and XLinks
* High performance and excellent scalability
* On-the-fly coordinate transformation
* Designed for rich data models from the bottom up
* Backends support flexible mapping of GML application schemas to relational models
* ISO 19107-compliant geometry model: Complex geometries (e.g. non-linear curves)
* Advanced filter expression support based on XPath 1.0
* Supports numerous backends, such as PostGIS, Oracle Spatial, MS SQL Server, Shapefiles or GML instance documents

**WMS**

* Implements WMS standards 1.1.1 and 1.3.0
* Extensive support for styling languages SLD/SE versions 1.0.0 and 1.1.0
* High performance and excellent scalability
* High quality rendering
* Scale dependent styling
* Support for SE removes the need for a lot of proprietary extensions
* Easy configuration of HTML and other output formats for GetFeatureInfo responses
* Uses stream-based data access with minimal memory footprint
* Nearly complete support for raster symbolizing as defined in SE (with some extensions)
* Complete support for TIME/ELEVATION and other dimensions for both feature and raster data
* Supports numerous backends, such as PostGIS, Oracle Spatial, Shapefiles or GML instance documents
* Can render rich data models directly

**WMTS**

* Implements Basic WMTS standard 1.0.0 (KVP)
* High performance and excellent scalability
* Supports different backends, such as GeoTIFF, remote WMS or file system tile image hierarchies
* Supports on-the-fly caching (using EHCache)
* Supports GetFeatureInfo for remote WMS backends

**CSW**

* Implements CSW standard 2.0.2
* Fully transactional
* Supports KVP, XML and SOAP requests
* High performance and excellent scalability
* ISO Metadata Application Profile 1.0.0
* Pluggable and modular dataaccess layer allows to add support for new APs and backends
* Modular inspector architecture allows to validate records to be inserted against various criteria
* Standard inspectors: schema validity, identifier integrity, INSPIRE requirements
* Handles all defined queryable properties (for Dublin Core as well as ISO profile)
* Complex filter expressions

**WPS**

* Implements WPS standard 1.0.0
* Supports KVP, XML and SOAP requests
* Pluggable process provider layer
* Easy-to-use API for implementing Java processes
* Supports all variants of input/output parameters: literal, bbox, complex (binary and xml)
* Streaming access for complex input/output parameters
* Processing of huge amounts of data with minimal memory footprint
* Supports storing of response documents/output parameters
* Supports input parameters given inline and by reference
* Supports RawDataOutput/ResponseDocument responses
* Supports asynchronous execution (with polling of process status)

Implemented Standards
--------------------------------------------------------------------------------

* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 and 2.0.0
* OGC Web Map Service (WMS) 1.1.1 and 1.3.0
* OGC Web Map Tile Service (WMTS) 1.1.0
* OGC Catalogue Service-Web (CSW) 2.0.2
* OGC Web Processing Service (WPS) 1.0.0
* OGC GML 2.12, 3.0.1, 3.1.1 and 3.2.1

Details
--------------------------------------------------------------------------------

**Website:** http://www.deegree.org

**Licence:** LGPL

**Software Version:** |version-deegree|

**Supported Platforms:** Windows, Linux

**API Interfaces:** Java

**Support:** https://www.deegree.org/community


@QUICKSTART_deegree@

.. presentation-note
    deegree is another robust application which has claimed the title of supporting the most comprehensive set of OGC Web Services in free and open source software, ranging from a transactional Web Feature Service to three-dimensional data display in a Web Terrain Service and many more!
