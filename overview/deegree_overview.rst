:Author: Johannes Wilden
:Version: osgeo-live4.0
:License: Creative Commons

.. _deegree-overview:

.. image:: images/project_logos/logo-deegree.png
  :scale: 100 %
  :alt: project logo
  :align: right

.. image:: images/logos/OSGeo_incubation.png
  :scale: 100
  :alt: OSGeo Project
  :align: right

deegree
=======

Web Services
~~~~~~~~~~~~~~~~

deegree is an Java API (Application Programming Interface) for Geographic Informations Systems (GIS) which can be used for setting up web based spatial data infrastructures. It also includes a powerful and flexible web mapping tool for you to build your Spatial Data Infrastructure, the iGeoPortal.

deegree is free, stable, powerfull and easy to use. But also, deegree is the most comprehensive set of OGC Web Services in free and open source software out there, ranging from a transactional Web Feature Service to the more pleasing to the eye Web Terrain Service and many more!
 
With deegree you will be able to set up different web services for your usecase with your own data.

.. image:: images/screenshots/1024x768/deegree_mainpage.gif
  :scale: 50%
  :alt: project logo
  :align: right

Some example features
-------------

* Web Map Service
  
  * supports HTTP GET, HTTP POST and feature info requests (vector- and raster data)
  * very flexible when it comes to layer contents
  * supports and uses style definitions (SLD 1.0), possibility to use charts (pie, bar, line) as point symbolizers 
  * datasources: all common OGC web services (WMS, WFS, WCS), Postgres/PostGIS, Oracle Spatial, any arbitrary SQL statement can be used to create the WMS layer content
  * very stable, even for large scales 
  
* Web Feature Service

  * supports complex features
  * on the fly coordinate transformation
  * supports flexible output formats
  * many more...
  
* Web Coverage Service

  * supports HTTP GET and HTTP POST requests
  * datasources: images (tif, png, jpeg, gif, bmp); GeoTIFF; ECW files; Oracle GeoRaster 
  
* Catalogue Service-Web

  * datasources: Postgres-Database; Oracle-Database 
  * supported requests: GetCapabilities; DescribeRecord; GetRecordById; GetRecords; Transaction - Insert, Update, Delete; Harvesting
  
* Web Map Print Service

  * supports different print formats (HTML, PDF, PNG)
  * long time running jobs
  * requests can be asynchronouly to support creating prints from a large amount of data
  * requests are stored within a database and will be available even if WMPS is stopped by an adminstrator or the machine fails 
  
* Web Perspective View Service

   * datasources: remote/local-WMS, remote/local-WFS, local-WCS, Postgres/PostGIS, Oracle Spatial
   * elevationmodels can be vector data or raster data
   * requests: Get3DFeatureInfo, GetView
   
* ... and more!

Implemented Standards
---------------------

* OGC Web Map Service (WMS) 1.1.0*, 1.1.1, 1.3.0*
* OGC Web Feature Service (WFS) 1.0.0, 1.1.0 (2.0 in progress)
* OGC Web Coverage Service (WCS) 1.0.0* (1.1.0 in progress)
* OGC Catalogue Service-Web (CSW) 2.0.0, 2.0.1, 2.0.2; including OGC ISO AP 1.0 and INSPIRE profile
* OGC Web Perspective View Service (WPVS) Draft 6
* OGC Web Coordinate Transformation Service (WCTS) 0.4.0
* OGC Web Processing Service (WPS) 0.4.0, 1.0.0
* OGC Sensor Observation Service (SOS) 1.0.0

Details
-------

**Website:** http://deegree.org/ 

**Licence:** LGPL

**Software Version:** 2.3

**Supported Platforms:** Windows, Linux

**API Interfaces:** Java

**Support:** http://wiki.deegree.org/deegreeWiki/GettingSupport
