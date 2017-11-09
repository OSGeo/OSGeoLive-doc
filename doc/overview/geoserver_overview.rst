:Author: Ian Turton
:Author: Frank Gasdorf
:Reviewer: Cameron Shorter, Jirotech
:Reviewer: Angelos Tzotsos, OSGeo
:Version: osgeolive11.0
:License: Creative Commons Attribution 3.0 Unported (CC BY 3.0)

@LOGO_geoserver@
@OSGEO_KIND_geoserver@


@NAME_geoserver@
================================================================================

Web Service
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

GeoServer is a web server that allows you to serve maps and data from
a variety of formats to standard clients such as web browsers and desktop
GIS programs. Data is published via standards based interfaces, such as WMS,
WFS, WCS, WPS, Tile Caching and more. GeoServer comes with a browser-based
management interface and connects to multiple data sources at the back end.

@SCREENSHOT_geoserver@

.. image:: /images/projects/geoserver/geoserver.png
  :scale: 60 %
  :alt: Screen Shot of GeoServer
  :align: right

Core Features
--------------------------------------------------------------------------------

**Serve data from a variety of data stores:**
    * Vector
        - Shapefiles, External WFS
        - PostGIS, ArcSDE, DB2, Oracle Spatial, MySql, SQL Server
    * Raster
        - GeoTiff, JPG and PNG (with world file), image pyramid, GDAL formats, Image Mosaic, Oracle GeoRaster, NetCDF

**Data is served as safe and quick images using WMS and WMTS protocols:**
    As the data is served up as an image your data is completely safe and secure. Unless they redigitise your data there is no way to steal your data.
    The appearance of each map layer can be controlled using the SLD standard which allows features to be coloured and labeled. By combining these rules with OGC Filters scale dependent styling can be implemented allowing more detail to be added as a user zooms in. Label collision management, grouping and priorities are also implemented.

**Full vector data can be sent to a client using the WFS protocol:**
     A WFS client can download vector data and use it for mapping, spatial analysis and other operations. Also if authorised the user can modify the data and send it back to the server to update the stored data using the WFS-T protocol.
     The data can be transmitted using GML (compressed) as well as other standard data formats like shapefile and json.

**Raster data values can be sent to a client using the WCS protocol:**
     A GIS client can request the actual raster data for use in spatial analysis. This allows a user to create applications which can model the process described by your data.

**On the fly reprojection:**
     GeoServer supports the majority of the EPSG database of projections and can reproject to any of them on demand to allow clients with limited reprojection support to pass the load to the server.

**Tiling Cache**
    `GeoWebCache <http://geowebcache.org/>`_, which is integrated into GeoServer, tiles and caches map images from a variety of sources such as WMS. It implements various service interfaces (such as WMS-C, WMTS, TMS, Google Maps KML, Virtual Earth) in order to accelerate and optimize map image delivery. It can also recombine tiles to work with regular WMS clients.

**Web Processing Service (WPS)**
    Geospatial algorithms, including those from :doc:`JTS <jts_overview>`, can be called through GeoServer's `WPS <http://www.opengeospatial.org/standards/wps>`__ interface. This includes the chaining of processes, and using rendering transformations to create powerful visualisations through the WMS interface.

Implemented Standards
--------------------------------------------------------------------------------

Support of numerous Open Geospatial Consortium  (OGC) standards:

  

* `WMS <http://www.opengeospatial.org/standards/wms>`__ (client/server)
* Web Map Tile Service (WMTS)
* `WFS-T <http://www.opengeospatial.org/standards/wfs>`__ (transactional)
* `WCS <http://www.opengeospatial.org/standards/wcs>`__
* `FE <http://www.opengeospatial.org/standards/fe>`__
* `SLD <http://www.opengeospatial.org/standards/sld>`__
* `GML <http://www.opengeospatial.org/standards/gml>`__
* `KML <http://www.opengeospatial.org/standards/kml>`__

Details
--------------------------------------------------------------------------------

**Website:** http://geoserver.org/

**Licence:** GNU General Public License (GPL) version 2

**Software Version:** |version-geoserver|

**Supported Platforms:** Java 8 (Oracle JDK and OpenJDK) on Windows, Linux, and Mac

**API Interfaces:** WMS, WFS, WCS, REST

**Support:** http://geoserver.org/support/

@QUICKSTART_geoserver@

