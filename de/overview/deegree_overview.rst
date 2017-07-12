:Author: Johannes Wilden, Danilo Bretschneider
:Version: osgeo-live7.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

.. image:: /images/project_logos/logo-deegree.png
  :alt: project logo
  :align: right
  :target: http://www.deegree.org

.. image:: /images/logos/OSGeo_project.png
  :scale: 100
  :alt: OSGeo Project
  :align: right
  :target: http://www.osgeo.org


deegree webservices
================================================================================

Die deegree Webservices sind Implementierungen der Webservice Spezifikationen des `Open Geospatial Consortium (OGC) <http://www.opengeospatial.org>`_ und der `INSPIRE Network Services <http://inspire.jrc.ec.europa.eu>`_. deegree webservices 3.3 enthält die folgenden Dienste:

* `Web Feature Service (WFS) <http://www.opengeospatial.org/standards/wfs>`_: Ermöglicht den direkten Zugriff auf räumliche Datenobjekte (Features)
* `Web Map Service (WMS) <http://www.opengeospatial.org/standards/wms>`_: Liefert Karten, die aus räumlichen Daten gerendert werden
* `Web Map Tile Service (WMTS) <http://www.opengeospatial.org/standards/wmts>`_: Liefert vorberechnete Kartenkacheln (Tiles)
* `Catalogue Service for the Web (CSW) <http://www.opengeospatial.org/standards/cat>`_: Durchführung von Suchen nach räumlichen Datensätzen und Diensten
* `Web Processing Service (WPS) <http://www.opengeospatial.org/standards/wps>`_: Führt Berechnungen auf räumlichen Daten aus

Mit einer deegree Webservices Installation können Sie sowohl einzelne dieser Dienste, alle, oder auch mehrere des gleichen Typs betreiben.

Eigenschaften des deegree WFS
--------------------------------------------------------------------------------

Der deegree WFS ist eine Implementierung der `OGC Web Feature Service Spezifikation <http://www.opengeospatial.org/standards/wfs>`_. Einige Eigenschaften:

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

Eigenschaften des deegree WMS
--------------------------------------------------------------------------------

Der deegree WMS ist eine Implementierung der `OGC Web Map Service Spezifikation <http://www.opengeospatial.org/standards/wms>`_. Einige Eigenschaften:

* Implements WMS standards 1.1.1 and 1.3.0
* Extensive support for styling languages SLD/SE versions 1.0.0 and 1.1.0
* High performance and excellent scalability
* High quality rendering
* Scale dependent styling
* Support for SE removes the need for a lot of proprietary extensions
* Easy configuration of HTML and other output formats for GetFeatureInfo responses
* Uses stream-based data access, minimal memory footprint
* Nearly complete support for raster symbolizing as defined in SE (with some extensions)
* Complete support for TIME/ELEVATION and other dimensions for both feature and raster data
* Supports numerous backends, such as PostGIS, Oracle Spatial, Shapefiles or GML instance documents
* Can render rich data models directly

Eigenschaften des deegree WMTS
--------------------------------------------------------------------------------

Der deegree WMTS ist eine Implementierung der `OGC Web Map Tile Service Spezifikation <http://www.opengeospatial.org/standards/wmts>`_. Einige Eigenschaften:

* Implements Basic WMTS standard 1.0.0 (KVP)
* High performance and excellent scalability
* Supports different backends, such as GeoTIFF, remote WMS or file system tile image hierarchies
* Supports on-the-fly caching (using EHCache)
* Supports GetFeatureInfo for remote WMS backends

Eigenschaften des deegree CSW
--------------------------------------------------------------------------------

Der deegree CSW ist eine Implementierung der `OGC Catalogue Service Spezifikation <http://www.opengeospatial.org/standards/cat>`_. Einige Eigenschaften:

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

Eigenschaften des deegree WPS
--------------------------------------------------------------------------------

Der deegree WPS ist eine Implementierung der `OGC Processing Service Spezifikation <http://www.opengeospatial.org/standards/wps>`_. Einige Eigenschaften:

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

Implementierte Standards
--------------------------------------------------------------------------------

* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 and 2.0.0
* OGC Web Map Service (WMS) 1.1.1 and 1.3.0
* OGC Web Map Tile Service (WMTS) 1.1.0
* OGC Catalogue Service-Web (CSW) 2.0.2
* OGC Web Processing Service (WPS) 1.0.0
* OGC GML 2.12, 3.0.1, 3.1.1 and 3.2.1

Details
--------------------------------------------------------------------------------

**Webseite:** http://www.deegree.org

**Lizenz:** LGPL

**Software Version:** |version-deegree|

**Unterstützte Plattformen:** Windows, Linux

**API Schnittstellen:** Java

**Support:** http://wiki.deegree.org/deegreeWiki/GettingSupport


Quickstart
--------------------------------------------------------------------------------

* :doc:`Quickstart documentation <../quickstart/deegree_quickstart>`
