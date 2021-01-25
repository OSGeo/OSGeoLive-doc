:Author: Jody Garnett
:Reviewer: Cameron Shorter, Jirotech
:Version: osgeolive5.5
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_geotools@
@OSGEO_KIND_geotools@


@NAME_geotools@
================================================================================

GeoTools is an open source (LGPL) Java library which provides standards compliant methods for manipulating geospatial data, and uses data structures based on Open Geospatial Consortium (OGC) specifications.

GeoTools is used by a number of projects including web services, command line tools and desktop applications. OSGeoLive applications which include GeoTools include:
:doc:`52nSOS_overview`, :doc:`52nWPS_overview`, AtlasStyler, Geomajas, Geopublisher, :doc:`geoserver_overview`, and :doc:`udig_overview`.

@SCREENSHOT_geotools@

Core Features
--------------------------------------------------------------------------------

* Definition of interfaces for key spatial concepts and data structures

  * Integrated Geometry support provided by `JTS Topology Suite (JTS) <https://sourceforge.net/projects/jts-topo-suite/>`_
  * Attribute and spatial filters using OGC Filter Encoding specification

* A clean data access API supporting feature access, transaction support and locking between threads

  * Access GIS data in many file formats and spatial databases
  * Coordinate reference system and transformation support
  * Work with an extensive range of map projections
  * filter and analyze data in terms of spatial and non-spatial attributes

* A stateless, low memory renderer, particularly useful in server-side environments.

  * compose and display maps with complex styling

* Powerful *schema assisted* parsing technology using XML Schema to bind to GML content

  * The parsing / encoding technology is provided with bindings for many OGC standards including GML, Filter, KML, SLD, and SE.

* GeoTools Plugins: open plug-in system allowing you to teach the library additional formats

  * Plug-ins for the ImageIO-EXT project allowing GeoTools to read additional raster formats from GDAL

* GeoTools Extensions

  * Provide additional capabilities built using the spatial facilites of the core library.

  .. image:: /images/projects/geotools/geotools-extension.png
     :alt: Extensions built using the GeoTools library

  * Extensions provide graph and networking support (for finding the shortest path), validation, a web map server client, bindings for xml parsing and encoding and color brewer.

* GeoTools Unsupported

  * GeoTools also operates as part of a wider community with a staging area used to foster new talent and promote experimentation.

  * Some highlights are swing support (used in geotools tutorials), swt, local and web process support, additional symbology, additional data formats, generation of grids and a couple of implementations of ISO Geometry.

Supported Formats
-----------------

* raster formats and data access:

  arcsde, arcgrid, geotiff, grassraster, gtopo30, image (JPEG, TIFF, GIF, PNG), imageio-ext-gdal, imagemoasaic, imagepyramid, JP2K, matlab.

* Database "jdbc-ng" support:

  db2, h2, mysql, oracle, postgis, spatialite, sqlserver.

* Vector formats and data access:

  app-schema, arcsde, csv, dxf, edigeo, excel, geojson, org, property, shapefile, wfs.

* XML Bindings:

  Java data structures and bindings provided for the following:
  xsd-core (xml simple types), fes, filter, gml2, gml3, kml, ows, sld, wcs, wfs, wms, wps, vpf.

  Additional Geometry, Filter and Style parser/encoders available for DOM and SAX applications.

Implemented Standards
--------------------------------------------------------------------------------

Support of numerous Open Geospatial Consortium (OGC) standards:

* OGC Style Layer Descriptor / Symbology Encoding data structures and rendering engine
* OGC General Feature Model including Simple Feature support
* OGC Grid Coverage representation of raster information
* OGC Filter and Common Constraint Language (CQL)
* Clients for Web Feature Service (WFS), Web Map Service (WMS) and experimental support for Web Process Service (WPS)
* ISO 19107 Geometry

Details
--------------------------------------------------------------------------------

**Website:** @WEB_geotools@

**Licence:** LGPL

**Supported Platforms:** Cross Platform Java 8,9,10

**API Interfaces:** Java

**Support:** `Communication and Support <http://docs.geotools.org/latest/userguide/welcome/support.html>`_

GeoTools_Support
--------------------------------------------------------------------------------

* `Quickstart documentation <http://docs.geotools.org/latest/userguide/tutorial/quickstart/index.html>`_

@VMDK_geotools@
@QUICKSTART_geotools@

.. presentation-note
    GeoTools is used by most Java based Geospatial applications. It provides standards based geospatial data structures, connectors to numerous data stores, data manipulation and rendering functionality.
