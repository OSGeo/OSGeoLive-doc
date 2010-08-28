.. Writing Tip:
  Writing tips describe what content should be in the following section.

.. Writing Tip:
  Metadata about this document

:Author: OSGeo Live
:Version: osgeo-live4.0
:License: Creative Commons

.. Writing Tip:
  The following becomes a HTML anchor for hyperlinking to this page

.. _geokettle-overview:

.. Writing Tip: 
  Project logos are stored here:
    https://svn.osgeo.org/osgeo/livedvd/gisvm/trunk/doc/images/project_logos/
  and accessed here:
    images/project_logos/<filename>

.. image:: images/project_logos/logo-geokettle.png
  :scale: 80 %
  :alt: project logo
  :align: right
  :target: http://www.geokettle.org/

.. Writing Tip: Name of application

GeoKettle
=========

.. Writing Tip:
  Application Category Description:
  * Spatial Database
  * Web Service
  * Metadata Web Service
  * Desktop GIS
  * Browser GIS client
  * Business Intelligence
  * GIS Tools
  * ...

Data Integration
~~~~~~~~~~~~~~~~

.. Writing Tip:
  Address user questions of "What does the application do?",
  "When would I use it?", "Why would I use it over other applications?",
  "How mature is the application and how widely deployed is it?".
  Don't mention licence or open source in this section.
  Target audience is a GIS practitioner or student who is new to Open Source.

GeoKettle is a "spatially-enabled" version of the `Pentaho Data Integration (Kettle) <http://www.pentaho.com/products/data_integration/>`_. It is a powerful, metadata-driven spatial ETL (Extract, Transform and Load) tool dedicated to the integration of different data sources for building and updating geospatial databases and data warehouses.

GeoKettle enables the Extraction of data from data sources, the Transformation of data in order to correct errors, make some data cleansing, change the data structure, make them compliant to defined standards, and the Loading of transformed data into a target DataBase Management System (DBMS), GIS file, or geospatial web service.

GeoKettle is particularly useful when a user wants to automate complex and repetitive data processing without producing any specific code, to make conversions between various data formats, to migrate data from one DBMS to another, to perform some data feeding tasks into various DBMS, to populate analytical data warehouses for decision support purposes, etc.

In the geospatial domain, Geokettle compares to FME, a proprietary spatial ETL tool edited by Safe Software. GeoKettle is stable, fast, standards compliant, with hundreds of functions and read/write support for many file formats, services and DBMS. GeoKettle is used by diverse organisations from around the world, including governmental agencies, banks, insurance and geospatial system integrators.

.. Writing Tip:
  Provide a image of the application which will typically be a screen shot
  or a collage of screen shots.
  Store image in image/<application>_<name>.gif . Eg: udig_main_page.gif
  Screenshots should be captured from a 1024x768 display.
  Don't include the desktop background as this changes with each release
  and will become dated.

.. image:: images/screenshots/1024x768/geokettle-overview.png
  :scale: 50 %
  :alt: project logo
  :align: right

Core Features
-------------

* Extract data from: 

  * 35+ database types: MySQL, PostgreSQL, Oracle, ...
  * XML files
  * XLS files
  * Xbase files (dBase, Foxpro, etc)
  * File systems information
  * Generated data
  * MS Access files
  * LDAP
  * Geospatial data formats: Shapefile, ...

* Transformation of data:

  * Engine based data transfer (no code generator) 
  * Looking up data in databases, files or memory
  * Calculating
  * Scripting: Javascript, SQL, RegExp
  * Splitting
  * Mapping
  * Selecting
  * Partitioning
  * Filtering
  * Merging
  * Joining
  * Duplicating
  * Clustering (MPP)
  * Pivotting
  * Geospatial data analysis and processing

* Load data into a target format:

  * Database loads
  * Data warehouse population
  * Partitioned loading
  * Bulk loading
  * Parallel loading
  * Clustering

* Environment:
  
  * Full GUI named "Spoon" to edit every transformation options
  * Command line tools: execute jobs and transformations
  * Web server: remote execution and clustering perfect in cloud
    computing environment for very large datasets processing
  * Programming API for Java
  * Plugin eco-system

.. Writing Tip:
  Optional: A second screenshot can sometimes be added here
  if there is sufficient room.
  .. image:: images/screenshots/800x600/pgadmin.gif
    :scale: 50 %
    :alt: project logo
    :align: right

Implemented Standards
---------------------

.. Writing Tip: List OGC or related standards supported.

* OGC standards compliant (SFS)

Details
-------

**Website:** http://www.geokettle.org/

**Licence:** GNU Lesser General Public License (LGPL) version 2.1

**Software Version:** 3.2.0-20090609

**Supported Platforms:** Windows, Linux, Mac, Solaris

**API Interfaces:** Java, Javascript

.. Writing Tip:
  Link to webpage which lists the primary support details for the application,
  preferably this would list both community and commercial contacts.

**Support:** http://www.spatialytics.org & http://www.spatialytics.com

.. Writing Tip:
  Later, we may introduce a Maturity Rating, but currently the format, and
  whether we go ahead with such a rating is still under discussion.
  http://wiki.osgeo.org/wiki/Marketing_Artefacts#Maturity_Rating
