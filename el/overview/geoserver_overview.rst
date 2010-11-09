:Author: Ian Turton
:Version: osgeo-live4.0
:License: Creative Commons

.. _geoserver-overview:

.. image:: images/project_logos/logo-GeoServer.png
  :scale: 100%
  :alt: project logo
  :align: right
  :target: http://geoserver.org/display/GEOS/Welcome

.. image:: images/logos/OSGeo_incubation.png
  :scale: 100 %
  :alt: Λογισμικό ενσωματωμένο στο OSGeo
  :align: right
  :target: http://www.osgeo.org/incubator/process/principles.html

GeoServer
=========

Διαδικτυακή Υπηρεσία
~~~~~~~~~~~

GeoServer is a web server that allows you to serve maps and data from
a variety of formats to standard clients such as web browsers and desk
top GIS programs. This means that you can store your spatial data is
almost any `format
<http://docs.geoserver.org/stable/en/user/data/index.html>`_ you prefer but that your users do not need to know
anything about GIS data. At the simplest level all they need is a web
browser to see your maps exactly as you want. 

GeoServer is the reference implementation of the `Open Geospatial
Consortium <http://www.opengeospatial.org>`_ (OGC) `Web Feature
Service <http://www.opengeospatial.org/standards/wfs>`_ (WFS) and `Web
Coverage Service <http://www.opengeospatial.org/standards/wcs>`_ (WCS)
standards, as well as a high performance certified compliant `Web Map
Service <http://www.opengeospatial.org/standards/wms>`_ (WMS).
GeoServer forms a core component of the Geospatial Web. 

.. image:: images/screenshots/800x600/geoserver.gif
  :scale: 60 %
  :alt: Screen Shot of GeoServer
  :align: right

Βασικά Χαρακτηριστικά
-------------

**Serve data from a variety of data stores:**
    * Vector
        - Shapefiles, External WFS
        - PostGIS, ArcSDE, DB2, Oracle Spatial, MySql, SQL Server
    * Raster
        - GeoTiff, JPG and PNG (with world file), image pyramid, GDAL formats, Image Mosaic, Oracle GeoRaster

**Data is served as safe and quick images using the WMS protocol:**
    As the data is served up as an image your data is completely safe and secure. Unless they redigitise your data there is no way to steal your data.
    The appearance of each map layer can be controlled using the SLD standard which allows features to be coloured and labeled. By combining these rules with OGC Filters scale dependent styling can be implemented allowing more detail to be added as a user zooms in. Label collision management, grouping and priorities are also implemented.

**Full vector data can be sent to a client using the WFS protocol:**
     A WFS client can download vector data and use it for mapping, spatial analysis and other operations. Also if authorised the user can modify the data and send it back to the server to update the stored data using the WFS-T protocol.
     The data can be transmitted using GML (compressed) as well as other standard data formats like shapefile and json.

**Raster data values can be sent to a client using the WCS protocol:**
     A GIS client can request the actual raster data for use in spatial analysis. This allows a user to create applications which can model the process described by your data.

**On the fly reprojection:**
     GeoServer supports the majority of the EPSG database of projections and can reproject to any of them on demand to allow clients with limited reprojection support to pass the load to the server. 

**WMS Tiling Cache**
    `GeoWebCache <http://geowebcache.org/>`_ is a WMS tiling client. It runs as a proxy server between a map client and map server, caching tiles as they are requested, eliminating redundant requests and saving large amounts of processing time. GeoWebCache has been integrated into GeoServer.

Υλοποιημένα Πρότυπα
---------------------

* Υποστήριξη μεγάλου αριθμού προτύπων του Open Geospatial Consortium  (OGC)

* WMS, transactional WFS, WCS, Filter Encoding, SLD, GML

Λεπτομέρειες
-------

**Website:** http://geoserver.org/display/GEOS/Welcome

**Άδεια:** GNU General Public License (GPL) version 2

**Software Version:** 2.0.2

**Supported Platforms:** All Java 1.5 platforms: - Windows, Linux, Mac

**API Interfaces:** WMS, WFS, WCS, REST

**Support:** http://geoserver.org/display/GEOS/Commercial+Support
